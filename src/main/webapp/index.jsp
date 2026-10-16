<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop | Discover Your Style</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Outfit:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        :root {
            --bg: #f7f7f5;
            --white: #ffffff;
            --ink: #171717;
            --muted: #777772;
            --accent: #c9f31d;
            --accent-dark: #a9d20b;
            --border: #e9e9e4;
            --radius: 20px;
            --shadow: 0 12px 35px rgba(0, 0, 0, 0.05);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
            scroll-padding-top: 100px;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg);
            color: var(--ink);
            line-height: 1.6;
        }

        button, input {
            font: inherit;
        }

        button, a {
            -webkit-tap-highlight-color: transparent;
        }

        button {
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            display: block;
            width: 100%;
        }

        .container {
            width: min(1320px, 92%);
            margin: auto;
        }

        .announcement {
            background: var(--ink);
            color: white;
            text-align: center;
            padding: 10px 15px;
            font-size: 12px;
            letter-spacing: .7px;
        }

        .announcement strong {
            color: var(--accent);
        }

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(247, 247, 245, .94);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            min-height: 82px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 25px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Outfit', sans-serif;
            font-size: 27px;
            font-weight: 800;
            letter-spacing: -1.5px;
            white-space: nowrap;
        }

        .brand-mark {
            width: 37px;
            height: 37px;
            display: grid;
            place-items: center;
            background: var(--accent);
            border-radius: 12px;
            font-size: 19px;
        }

        .brand span:last-child {
            color: #777;
            font-weight: 500;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .nav-links a {
            color: #555;
            font-size: 13px;
            font-weight: 600;
            transition: .2s;
        }

        .nav-links a:hover {
            color: #000;
        }

        .header-right {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .search {
            height: 43px;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 0 14px;
            background: #ededeb;
            border-radius: 12px;
        }

        .search input {
            border: none;
            outline: none;
            background: transparent;
            width: 145px;
            font-size: 12px;
        }

        .icon-btn {
            width: 43px;
            height: 43px;
            display: grid;
            place-items: center;
            border: 1px solid var(--border);
            border-radius: 12px;
            background: var(--white);
            font-size: 16px;
            position: relative;
            transition: .2s;
        }

        .icon-btn:hover {
            background: var(--accent);
            border-color: var(--accent);
        }

        .cart-count {
            position: absolute;
            top: -7px;
            right: -6px;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            background: var(--accent);
            border: 2px solid var(--bg);
            display: grid;
            place-items: center;
            font-size: 10px;
            font-weight: 800;
        }

        .menu-toggle {
            display: none;
        }

        .hero {
            padding: 35px 0 0;
        }

        .hero-inner {
            min-height: 510px;
            border-radius: 26px;
            background: #e9ebdf;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            position: relative;
        }

        .hero-content {
            padding: 70px 0 65px 65px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
            z-index: 1;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 9px;
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1.6px;
            margin-bottom: 22px;
        }

        .eyebrow i {
            color: #799b00;
        }

        .hero h1 {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(45px, 5.2vw, 76px);
            line-height: 1.03;
            letter-spacing: -4px;
            max-width: 530px;
            font-weight: 700;
        }

        .hero h1 span {
            color: #758d18;
        }

        .hero p {
            margin: 22px 0 30px;
            max-width: 390px;
            color: #64665c;
            font-size: 14px;
            line-height: 1.9;
        }

        .hero-actions {
            display: flex;
            align-items: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .btn {
            min-height: 49px;
            padding: 0 24px;
            border: none;
            border-radius: 12px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 11px;
            font-size: 12px;
            font-weight: 800;
            transition: .25s;
        }

        .btn-dark {
            background: var(--ink);
            color: white;
        }

        .btn-dark:hover {
            background: #333;
            transform: translateY(-2px);
        }

        .btn-accent {
            background: var(--accent);
            color: var(--ink);
        }

        .btn-accent:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
        }

        .text-link {
            font-size: 12px;
            font-weight: 700;
            border-bottom: 1px solid #999;
            padding-bottom: 4px;
        }

        .hero-image {
            position: relative;
            min-height: 400px;
        }

        .hero-image img {
            height: 100%;
            object-fit: cover;
            object-position: center;
        }

        .floating-note {
            position: absolute;
            bottom: 28px;
            left: -25px;
            background: white;
            padding: 16px 20px;
            border-radius: 15px;
            box-shadow: var(--shadow);
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .floating-note .note-icon {
            width: 38px;
            height: 38px;
            background: var(--accent);
            border-radius: 11px;
            display: grid;
            place-items: center;
        }

        .floating-note strong {
            display: block;
            font-size: 12px;
        }

        .floating-note small {
            color: var(--muted);
            font-size: 10px;
        }

        .benefits {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            padding: 35px 0;
            border-bottom: 1px solid var(--border);
            gap: 20px;
        }

        .benefit {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 13px;
        }

        .benefit i {
            font-size: 21px;
        }

        .benefit strong {
            display: block;
            font-size: 12px;
        }

        .benefit small {
            display: block;
            color: var(--muted);
            font-size: 10px;
        }

        .section {
            padding: 75px 0 15px;
        }

        .section-head {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            gap: 20px;
            margin-bottom: 28px;
        }

        .section-kicker {
            color: #758d18;
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 8px;
        }

        .section-head h2 {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(27px, 3vw, 39px);
            letter-spacing: -1.5px;
            line-height: 1.15;
        }

        .section-head p {
            color: var(--muted);
            font-size: 12px;
            margin-top: 8px;
        }

        .view-all {
            display: inline-flex;
            gap: 10px;
            align-items: center;
            font-size: 12px;
            font-weight: 800;
            padding-bottom: 5px;
            border-bottom: 1px solid #aaa;
            white-space: nowrap;
        }

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            overflow: hidden;
            cursor: pointer;
            transition: .25s;
        }

        .category-card:hover,
        .category-card.selected {
            border-color: #b6d74b;
            transform: translateY(-4px);
            box-shadow: var(--shadow);
        }

        .category-image {
            height: 145px;
            overflow: hidden;
            background: #eeeee8;
        }

        .category-image img {
            height: 100%;
            object-fit: cover;
            transition: .35s;
        }

        .category-card:hover img {
            transform: scale(1.07);
        }

        .category-info {
            padding: 15px 13px;
        }

        .category-info h3 {
            font-size: 13px;
            font-weight: 700;
        }

        .category-info p {
            color: var(--muted);
            font-size: 10px;
            margin-top: 3px;
        }

        .filter-row {
            display: flex;
            flex-wrap: wrap;
            gap: 9px;
            margin-bottom: 25px;
        }

        .filter-btn {
            padding: 10px 17px;
            border: 1px solid var(--border);
            background: white;
            border-radius: 10px;
            font-size: 11px;
            font-weight: 700;
            transition: .2s;
        }

        .filter-btn.active,
        .filter-btn:hover {
            background: var(--ink);
            color: white;
            border-color: var(--ink);
        }

        .products {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 22px;
        }

        .product-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
            overflow: hidden;
            transition: .25s;
            min-width: 0;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .product-image {
            position: relative;
            aspect-ratio: 1 / 1.05;
            overflow: hidden;
            background: #efefeb;
        }

        .product-image img {
            height: 100%;
            object-fit: cover;
            transition: .4s;
        }

        .product-card:hover .product-image img {
            transform: scale(1.06);
        }

        .product-tag {
            position: absolute;
            top: 13px;
            left: 13px;
            padding: 6px 10px;
            border-radius: 7px;
            background: var(--accent);
            font-size: 9px;
            font-weight: 800;
            text-transform: uppercase;
        }

        .wishlist-btn {
            position: absolute;
            top: 11px;
            right: 11px;
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: white;
            font-size: 15px;
            transition: .2s;
        }

        .wishlist-btn.active {
            background: #ffe5e5;
            color: #e33;
        }

        .product-info {
            padding: 17px;
        }

        .product-category {
            font-size: 9px;
            text-transform: uppercase;
            color: var(--muted);
            font-weight: 700;
            letter-spacing: 1px;
        }

        .product-info h3 {
            margin: 7px 0;
            font-size: 14px;
            font-weight: 700;
            line-height: 1.5;
            min-height: 42px;
        }

        .rating {
            color: #dca900;
            font-size: 11px;
            margin-bottom: 13px;
        }

        .rating span {
            color: var(--muted);
            margin-left: 5px;
        }

        .product-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 8px;
        }

        .price {
            font-size: 17px;
            font-weight: 800;
            white-space: nowrap;
        }

        .old-price {
            color: #aaa;
            text-decoration: line-through;
            font-size: 10px;
            font-weight: 400;
            margin-left: 4px;
        }

        .add-btn {
            width: 39px;
            height: 39px;
            flex-shrink: 0;
            background: #f0f0eb;
            border-radius: 11px;
            display: grid;
            place-items: center;
            transition: .2s;
        }

        .add-btn:hover,
        .add-btn.added {
            background: var(--accent);
        }

        .empty-state {
            grid-column: 1 / -1;
            text-align: center;
            padding: 60px 20px;
            color: var(--muted);
            background: white;
            border-radius: 18px;
        }

        .empty-state i {
            font-size: 35px;
            margin-bottom: 15px;
        }

        .deal-section {
            padding-top: 85px;
        }

        .deal-banner {
            background: #e7eadb;
            border-radius: 24px;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
        }

        .deal-image {
            min-height: 400px;
        }

        .deal-image img {
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 45px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
        }

        .deal-label {
            background: var(--accent);
            padding: 7px 12px;
            border-radius: 7px;
            font-size: 10px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 20px;
        }

        .deal-content h2 {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(31px, 3.5vw, 48px);
            line-height: 1.1;
            letter-spacing: -2px;
        }

        .deal-content p {
            font-size: 13px;
            color: #66695b;
            margin: 16px 0;
            max-width: 370px;
        }

        .deal-price {
            font-size: 27px;
            font-weight: 800;
        }

        .deal-price del {
            color: #999;
            font-size: 16px;
            font-weight: 400;
            margin-left: 9px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 20px 0 25px;
        }

        .timer-box {
            background: white;
            min-width: 61px;
            text-align: center;
            border-radius: 10px;
            padding: 10px 8px;
        }

        .timer-box strong {
            display: block;
            font-size: 21px;
        }

        .timer-box span {
            display: block;
            font-size: 8px;
            text-transform: uppercase;
            color: var(--muted);
        }

        .reviews-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .review-card {
            padding: 25px;
            background: white;
            border: 1px solid var(--border);
            border-radius: 18px;
        }

        .review-stars {
            color: #dca900;
            font-size: 13px;
            margin-bottom: 16px;
        }

        .review-card blockquote {
            font-size: 13px;
            line-height: 1.9;
            color: #555;
            min-height: 75px;
        }

        .review-author {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 20px;
        }

        .review-author img {
            width: 43px;
            height: 43px;
            object-fit: cover;
            border-radius: 50%;
        }

        .review-author strong {
            display: block;
            font-size: 12px;
        }

        .review-author span {
            font-size: 10px;
            color: var(--muted);
        }

        .newsletter {
            margin-top: 85px;
            padding: 48px;
            background: var(--ink);
            color: white;
            border-radius: 23px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 30px;
        }

        .newsletter h2 {
            font-family: 'Outfit', sans-serif;
            font-size: 32px;
            letter-spacing: -1px;
        }

        .newsletter p {
            color: #aaa;
            font-size: 12px;
            margin-top: 7px;
        }

        .newsletter-form {
            width: min(460px, 100%);
        }

        .newsletter-fields {
            display: flex;
            gap: 8px;
            padding: 6px;
            background: #303030;
            border-radius: 12px;
        }

        .newsletter-fields input {
            flex: 1;
            min-width: 0;
            background: transparent;
            border: none;
            outline: none;
            padding: 0 12px;
            color: white;
            font-size: 12px;
        }

        .newsletter-fields input::placeholder {
            color: #999;
        }

        .newsletter-fields .btn {
            min-height: 43px;
            padding: 0 17px;
        }

        #newsletterMsg {
            font-size: 11px;
            margin: 9px 5px 0;
            min-height: 18px;
        }

        footer {
            padding: 65px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 35px;
            padding-bottom: 45px;
        }

        .footer-brand p {
            color: var(--muted);
            max-width: 280px;
            font-size: 12px;
            margin-top: 17px;
            line-height: 1.9;
        }

        .socials {
            display: flex;
            gap: 9px;
            margin-top: 20px;
        }

        .socials a {
            width: 35px;
            height: 35px;
            border: 1px solid var(--border);
            border-radius: 10px;
            display: grid;
            place-items: center;
            font-size: 13px;
            transition: .2s;
        }

        .socials a:hover {
            background: var(--accent);
        }

        .footer-col h4 {
            font-size: 12px;
            margin-bottom: 19px;
        }

        .footer-col ul {
            list-style: none;
            display: grid;
            gap: 12px;
        }

        .footer-col a {
            font-size: 11px;
            color: var(--muted);
            transition: .2s;
        }

        .footer-col a:hover {
            color: var(--ink);
        }

        .footer-bottom {
            border-top: 1px solid var(--border);
            padding-top: 20px;
            display: flex;
            justify-content: space-between;
            gap: 15px;
            color: var(--muted);
            font-size: 10px;
        }

        .toast {
            position: fixed;
            bottom: 25px;
            right: 25px;
            z-index: 200;
            background: var(--ink);
            color: white;
            border-radius: 12px;
            padding: 15px 20px;
            font-size: 12px;
            box-shadow: var(--shadow);
            opacity: 0;
            transform: translateY(15px);
            pointer-events: none;
            transition: .25s;
        }

        .toast.show {
            opacity: 1;
            transform: translateY(0);
        }

        @media (max-width: 1050px) {
            .nav-links {
                gap: 16px;
            }

            .search input {
                width: 100px;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .category-image {
                height: 175px;
            }

            .products {
                grid-template-columns: repeat(3, minmax(0, 1fr));
            }

            .hero-content {
                padding-left: 40px;
            }

            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr;
            }
        }

        @media (max-width: 760px) {
            .container {
                width: 92%;
            }

            .announcement {
                font-size: 10px;
            }

            .header-inner {
                min-height: 70px;
                gap: 10px;
            }

            .brand {
                font-size: 22px;
            }

            .brand-mark {
                width: 32px;
                height: 32px;
            }

            .nav-links {
                display: none;
                position: absolute;
                top: 100%;
                left: 0;
                right: 0;
                background: var(--bg);
                border-bottom: 1px solid var(--border);
                padding: 15px 4%;
                flex-direction: column;
                align-items: stretch;
                gap: 0;
            }

            .nav-links.open {
                display: flex;
            }

            .nav-links a {
                padding: 13px 8px;
            }

            .menu-toggle {
                display: grid;
            }

            .search {
                display: none;
            }

            .header-right {
                gap: 7px;
            }

            .icon-btn {
                width: 38px;
                height: 38px;
                font-size: 14px;
            }

            .hero {
                padding-top: 18px;
            }

            .hero-inner {
                grid-template-columns: 1fr;
                min-height: auto;
            }

            .hero-content {
                padding: 40px 27px 28px;
            }

            .hero h1 {
                font-size: clamp(44px, 11vw, 65px);
                letter-spacing: -2.5px;
            }

            .hero p {
                font-size: 13px;
                margin: 17px 0 23px;
            }

            .hero-image {
                height: 270px;
                min-height: 0;
                margin-top: 5px;
            }

            .floating-note {
                left: 15px;
                bottom: 15px;
            }

            .benefits {
                grid-template-columns: repeat(2, 1fr);
                padding: 25px 0;
                gap: 25px 10px;
            }

            .benefit {
                justify-content: flex-start;
            }

            .benefit i {
                font-size: 17px;
            }

            .section {
                padding-top: 55px;
            }

            .section-head {
                align-items: flex-start;
                margin-bottom: 23px;
            }

            .section-head h2 {
                font-size: 28px;
            }

            .section-head p {
                font-size: 11px;
            }

            .view-all {
                font-size: 10px;
            }

            .categories {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 12px;
            }

            .category-image {
                height: 150px;
            }

            .products {
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 12px;
            }

            .product-info {
                padding: 12px;
            }

            .product-info h3 {
                font-size: 12px;
                min-height: 37px;
            }

            .product-bottom {
                align-items: center;
            }

            .price {
                font-size: 15px;
            }

            .old-price {
                display: block;
                margin-left: 0;
            }

            .add-btn {
                width: 34px;
                height: 34px;
            }

            .deal-banner {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 260px;
                height: 260px;
            }

            .deal-content {
                padding: 28px 24px;
            }

            .reviews-grid {
                grid-template-columns: 1fr;
            }

            .review-card blockquote {
                min-height: auto;
            }

            .newsletter {
                margin-top: 55px;
                padding: 30px 22px;
                flex-direction: column;
                align-items: flex-start;
                gap: 22px;
            }

            .newsletter h2 {
                font-size: 28px;
            }

            .newsletter-form {
                width: 100%;
            }

            .newsletter-fields {
                width: 100%;
            }

            .newsletter-fields .btn {
                padding: 0 12px;
                font-size: 10px;
            }

            .footer-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 32px 20px;
            }

            .footer-brand {
                grid-column: 1 / -1;
            }

            .footer-bottom {
                flex-direction: column;
                text-align: center;
            }
        }

        @media (max-width: 380px) {
            .brand {
                font-size: 19px;
            }

            .brand-mark {
                width: 29px;
                height: 29px;
            }

            .header-right {
                gap: 5px;
            }

            .icon-btn {
                width: 34px;
                height: 34px;
            }

            .hero-content {
                padding-left: 21px;
                padding-right: 21px;
            }

            .hero-actions {
                gap: 13px;
            }

            .hero-actions .btn {
                padding: 0 15px;
            }

            .category-image {
                height: 120px;
            }

            .product-info {
                padding: 10px;
            }

            .product-tag {
                top: 8px;
                left: 8px;
                font-size: 8px;
            }

            .wishlist-btn {
                top: 7px;
                right: 7px;
                width: 31px;
                height: 31px;
            }

            .timer-box {
                min-width: 53px;
            }
        }
    </style>
</head>

<body>

    <div class="announcement">
        NEW SEASON, NEW FINDS — <strong>FREE SHIPPING</strong> ON YOUR FIRST ORDER
    </div>

    <header>
        <div class="container header-inner">
            <a href="#" class="brand" aria-label="NexusShop home">
                <span class="brand-mark"><i class="fa-solid fa-bag-shopping"></i></span>
                <span>Nexus<span>Shop.</span></span>
            </a>

            <nav class="nav-links" id="navLinks">
                <a href="#" class="nav-home">Home</a>
                <a href="#categories">Categories</a>
                <a href="#products">Shop All</a>
                <a href="#deals">Special Offers</a>
                <a href="#reviews">Reviews</a>
            </nav>

            <div class="header-right">
                <form class="search" id="searchForm" role="search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products">
                </form>

                <button class="icon-btn" id="wishlistHeader" aria-label="View wishlist" title="Wishlist">
                    <i class="fa-regular fa-heart"></i>
                </button>

                <button class="icon-btn" id="cartBtn" aria-label="View shopping cart" title="Shopping cart">
                    <i class="fa-solid fa-bag-shopping"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>

                <button class="icon-btn menu-toggle" id="menuToggle" aria-label="Toggle navigation">
                    <i class="fa-solid fa-bars"></i>
                </button>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <div class="hero-inner">
                    <div class="hero-content">
                        <div class="eyebrow">
                            <i class="fa-solid fa-sparkles"></i>
                            The new collection · 2026
                        </div>

                        <h1>Less ordinary.<br>More <span>you.</span></h1>

                        <p>
                            Discover thoughtfully selected fashion, everyday tech and
                            must-have accessories. Your next favorite thing is waiting.
                        </p>

                        <div class="hero-actions">
                            <button class="btn btn-dark" id="shopNow">
                                Explore Collection <i class="fa-solid fa-arrow-right"></i>
                            </button>
                            <a href="#categories" class="text-link">Discover more</a>
                        </div>
                    </div>

                    <div class="hero-image">
                        <img
                            src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1100&q=85"
                            alt="Modern fashion boutique"
                        >

                        <div class="floating-note">
                            <div class="note-icon"><i class="fa-solid fa-star"></i></div>
                            <div>
                                <strong>Curated for you</strong>
                                <small>Style meets everyday living</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="container benefits" aria-label="Shopping benefits">
            <div class="benefit">
                <i class="fa-solid fa-truck-fast"></i>
                <div>
                    <strong>Free Shipping</strong>
                    <small>On your first order</small>
                </div>
            </div>

            <div class="benefit">
                <i class="fa-solid fa-rotate-left"></i>
                <div>
                    <strong>Easy Returns</strong>
                    <small>Hassle-free shopping</small>
                </div>
            </div>

            <div class="benefit">
                <i class="fa-solid fa-shield-halved"></i>
                <div>
                    <strong>Secure Payments</strong>
                    <small>Shop with confidence</small>
                </div>
            </div>

            <div class="benefit">
                <i class="fa-solid fa-headset"></i>
                <div>
                    <strong>Here to Help</strong>
                    <small>Customer-first support</small>
                </div>
            </div>
        </section>

        <section class="section" id="categories">
            <div class="container">
                <div class="section-head">
                    <div>
                        <div class="section-kicker">Find your favorites</div>
                        <h2>Shop by category</h2>
                        <p>A little something for every part of your life.</p>
                    </div>

                    <a href="#products" class="view-all">
                        Explore all <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>

                <div class="categories" id="categoriesGrid"></div>
            </div>
        </section>

        <section class="section" id="products">
            <div class="container">
                <div class="section-head">
                    <div>
                        <div class="section-kicker">Handpicked for you</div>
                        <h2>Trending right now.</h2>
                        <p>The pieces everyone's talking about.</p>
                    </div>

                    <a href="#products" class="view-all" id="viewAllProducts">
                        View all <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>

                <div class="filter-row" id="filterRow">
                    <button class="filter-btn active" data-filter="All">All products</button>
                    <button class="filter-btn" data-filter="Smartphones">Tech</button>
                    <button class="filter-btn" data-filter="Clothing">Fashion</button>
                    <button class="filter-btn" data-filter="Accessories">Accessories</button>
                    <button class="filter-btn" data-filter="Footwear">Footwear</button>
                </div>

                <div class="products" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <section class="deal-section" id="deals">
            <div class="container">
                <div class="deal-banner">
                    <div class="deal-image">
                        <img
                            src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85"
                            alt="Laptop featured in the special offer"
                            loading="lazy"
                        >
                    </div>

                    <div class="deal-content">
                        <span class="deal-label">
                            <i class="fa-solid fa-bolt"></i> Deal of the day
                        </span>

                        <h2>Big ideas.<br>Beautiful tech.</h2>

                        <p>
                            Meet your new everyday companion. Powerful performance,
                            premium design and productivity without compromise.
                        </p>

                        <div class="deal-price">
                            $999 <del>$1,199</del>
                        </div>

                        <div class="timer" aria-label="Time remaining for the featured deal">
                            <div class="timer-box">
                                <strong id="dealDays">01</strong>
                                <span>Days</span>
                            </div>
                            <div class="timer-box">
                                <strong id="dealHours">00</strong>
                                <span>Hours</span>
                            </div>
                            <div class="timer-box">
                                <strong id="dealMinutes">00</strong>
                                <span>Minutes</span>
                            </div>
                            <div class="timer-box">
                                <strong id="dealSeconds">00</strong>
                                <span>Seconds</span>
                            </div>
                        </div>

                        <button class="btn btn-dark" id="buyDeal">
                            Add deal to bag <i class="fa-solid fa-arrow-right"></i>
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <section class="section" id="reviews">
            <div class="container">
                <div class="section-head">
                    <div>
                        <div class="section-kicker">The good word</div>
                        <h2>Don't just take our word.</h2>
                        <p>Here's what our shoppers have to say.</p>
                    </div>
                </div>

                <div class="reviews-grid" id="reviewsGrid"></div>
            </div>
        </section>

        <section class="container">
            <div class="newsletter">
                <div>
                    <div class="section-kicker">A little inbox inspiration</div>
                    <h2>Good things start here.</h2>
                    <p>New arrivals, exclusive offers and more. No noise, just the good stuff.</p>
                </div>

                <form class="newsletter-form" id="newsletterForm">
                    <div class="newsletter-fields">
                        <input
                            type="email"
                            id="newsletterEmail"
                            placeholder="Your email address"
                            aria-label="Your email address"
                            required
                        >
                        <button class="btn btn-accent" type="submit">
                            Join us <i class="fa-solid fa-arrow-right"></i>
                        </button>
                    </div>
                    <div id="newsletterMsg" aria-live="polite"></div>
                </form>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-brand">
                    <a href="#" class="brand">
                        <span class="brand-mark"><i class="fa-solid fa-bag-shopping"></i></span>
                        <span>Nexus<span>Shop.</span></span>
                    </a>

                    <p>
                        A fresh take on online shopping. Discover quality products,
                        thoughtful finds and everyday essentials, all in one place.
                    </p>

                    <div class="socials">
                        <a href="https://www.instagram.com/" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
                        <a href="https://www.facebook.com/" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="https://www.pinterest.com/" aria-label="Pinterest"><i class="fa-brands fa-pinterest-p"></i></a>
                        <a href="https://www.youtube.com/" aria-label="YouTube"><i class="fa-brands fa-youtube"></i></a>
                    </div>
                </div>

                <div class="footer-col">
                    <h4>Explore</h4>
                    <ul>
                        <li><a href="#categories">Categories</a></li>
                        <li><a href="#products">New arrivals</a></li>
                        <li><a href="#deals">Special offers</a></li>
                        <li><a href="#products">Best sellers</a></li>
                    </ul>
                </div>

                <div class="footer-col">
                    <h4>Help & Support</h4>
                    <ul>
                        <li><a href="#reviews">Customer reviews</a></li>
                        <li><a href="#newsletterForm">Contact us</a></li>
                        <li><a href="#newsletterForm">Shipping information</a></li>
                        <li><a href="#newsletterForm">Returns & refunds</a></li>
                    </ul>
                </div>

                <div class="footer-col">
                    <h4>About NexusShop</h4>
                    <ul>
                        <li><a href="#">Our story</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Privacy policy</a></li>
                        <li><a href="#">Terms of service</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <span>© <span id="year"></span> NexusShop. All rights reserved.</span>
                <span>Made for the way you live.</span>
            </div>
        </div>
    </footer>

    <div class="toast" id="toast" role="status" aria-live="polite"></div>

    <script>
        const CATEGORIES = [
            {
                id: 'Smartphones',
                name: 'Smartphones',
                count: 24,
                image: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=500&q=80'
            },
            {
                id: 'Laptops',
                name: 'Laptops',
                count: 18,
                image: 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=500&q=80'
            },
            {
                id: 'Clothing',
                name: 'Fashion',
                count: 42,
                image: 'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=500&q=80'
            },
            {
                id: 'Gadgets',
                name: 'Audio & Gadgets',
                count: 31,
                image: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=500&q=80'
            },
            {
                id: 'Footwear',
                name: 'Footwear',
                count: 27,
                image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=500&q=80'
            },
            {
                id: 'Accessories',
                name: 'Accessories',
                count: 39,
                image: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=500&q=80'
            }
        ];

        const PRODUCTS = [
            {
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?auto=format&fit=crop&w=700&q=80',
                category: 'Smartphones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 5,
                reviews: 86,
                badge: 'Popular',
                img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80',
                category: 'Laptops'
            },
            {
                id: 3,
                title: 'Minimal Classic Watch',
                price: 149,
                oldPrice: 189,
                rating: 5,
                reviews: 214,
                badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80',
                category: 'Accessories'
            },
            {
                id: 4,
                title: 'Everyday Sneakers',
                price: 89,
                rating: 4,
                reviews: 53,
                badge: '',
                img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80',
                category: 'Footwear'
            },
            {
                id: 5,
                title: 'Premium Camera',
                price: 899,
                rating: 5,
                reviews: 42,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80',
                category: 'Gadgets'
            },
            {
                id: 6,
                title: 'Signature Fragrance',
                price: 120,
                rating: 5,
                reviews: 189,
                badge: '',
                img: 'https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=700&q=80',
                category: 'Accessories'
            },
            {
                id: 7,
                title: 'Weekend Travel Bag',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80',
                category: 'Accessories'
            },
            {
                id: 8,
                title: 'Wireless Headphones',
                price: 249,
                rating: 5,
                reviews: 156,
                badge: '',
                img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80',
                category: 'Gadgets'
            },
            {
                id: 9,
                title: 'Modern Everyday Jacket',
                price: 95,
                rating: 4,
                reviews: 75,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=700&q=80',
                category: 'Clothing'
            },
            {
                id: 10,
                title: 'Classic Sunglasses',
                price: 59,
                oldPrice: 79,
                rating: 5,
                reviews: 92,
                badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=700&q=80',
                category: 'Accessories'
            },
            {
                id: 11,
                title: 'Modern Smartphone',
                price: 699,
                rating: 4,
                reviews: 112,
                badge: '',
                img: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=80',
                category: 'Smartphones'
            },
            {
                id: 12,
                title: 'Casual Streetwear',
                price: 65,
                rating: 5,
                reviews: 48,
                badge: 'Popular',
                img: 'https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=700&q=80',
                category: 'Clothing'
            }
        ];

        const REVIEWS = [
            {
                name: 'Ava Martin',
                role: 'Verified Customer',
                avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80',
                text: 'The shopping experience was so smooth. Everything arrived beautifully packed, and the quality was even better than expected.',
                stars: 5
            },
            {
                name: 'Michael Lee',
                role: 'Regular Shopper',
                avatar: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80',
                text: 'Great product selection and a really clean website. Finding what I wanted took only a few minutes.',
                stars: 5
            },
            {
                name: 'Sophia Chen',
                role: 'Verified Customer',
                avatar: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80',
                text: 'Love the designs, the quality and the overall experience. I have already found a few more things for my next order.',
                stars: 5
            }
        ];

        let cart = [];
        let wishlist = new Set();
        let activeFilter = 'All';
        let searchQuery = '';
        let toastTimeout;

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const filterRow = document.getElementById('filterRow');
        const searchInput = document.getElementById('searchInput');
        const cartCount = document.getElementById('cartCount');
        const toast = document.getElementById('toast');
        const navLinks = document.getElementById('navLinks');

        function escapeHTML(value) {
            return String(value).replace(/[&<>"']/g, char => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            })[char]);
        }

        function formatPrice(price) {
            return '$' + price.toLocaleString('en-US');
        }

        function showToast(message) {
            toast.textContent = message;
            toast.classList.add('show');

            clearTimeout(toastTimeout);
            toastTimeout = setTimeout(() => {
                toast.classList.remove('show');
            }, 2400);
        }

        function renderCategories() {
            categoriesGrid.innerHTML = CATEGORIES.map(category => `
                <article class="category-card"
                    data-category="${escapeHTML(category.id)}"
                    tabindex="0"
                    role="button"
                    aria-label="Shop ${escapeHTML(category.name)}">
                    <div class="category-image">
                        <img src="${category.image}"
                            alt="${escapeHTML(category.name)}"
                            loading="lazy">
                    </div>
                    <div class="category-info">
                        <h3>${escapeHTML(category.name)}</h3>
                        <p>${category.count} items to explore</p>
                    </div>
                </article>
            `).join('');

            categoriesGrid.querySelectorAll('.category-card').forEach(card => {
                const selectCategory = () => {
                    const category = card.dataset.category;

                    if (category === 'Gadgets') {
                        setFilter('Gadgets');
                    } else {
                        setFilter(category);
                    }

                    document.getElementById('products').scrollIntoView({
                        behavior: 'smooth'
                    });
                };

                card.addEventListener('click', selectCategory);

                card.addEventListener('keydown', event => {
                    if (event.key === 'Enter' || event.key === ' ') {
                        event.preventDefault();
                        selectCategory();
                    }
                });
            });
        }

        function renderProducts() {
            let filteredProducts = PRODUCTS.filter(product => {
                const matchesFilter =
                    activeFilter === 'All' ||
                    product.category === activeFilter ||
                    (activeFilter === 'Tech' &&
                        ['Smartphones', 'Laptops', 'Gadgets'].includes(product.category));

                const searchText =
                    `${product.title} ${product.category}`.toLowerCase();

                const matchesSearch = searchText.includes(searchQuery.toLowerCase());

                const matchesWishlist =
                    activeFilter !== 'Wishlist' || wishlist.has(product.id);

                return matchesFilter && matchesSearch && matchesWishlist;
            });

            if (filteredProducts.length === 0) {
                productsGrid.innerHTML = `
                    <div class="empty-state">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <h3>No products found</h3>
                        <p>Try another search or select a different category.</p>
                        <button class="btn btn-dark" style="margin-top:18px"
                            onclick="resetFilters()">Show all products</button>
                    </div>
                `;
                return;
            }

            productsGrid.innerHTML = filteredProducts.map(product => `
                <article class="product-card">
                    <div class="product-image">
                        <img src="${product.img}"
                            alt="${escapeHTML(product.title)}"
                            loading="lazy">

                        ${product.badge ? `
                            <span class="product-tag">${escapeHTML(product.badge)}</span>
                        ` : ''}

                        <button
                            class="wishlist-btn ${wishlist.has(product.id) ? 'active' : ''}"
                            data-wishlist="${product.id}"
                            aria-label="${wishlist.has(product.id) ? 'Remove from' : 'Add to'} wishlist">
                            <i class="${wishlist.has(product.id) ? 'fa-solid' : 'fa-regular'} fa-heart"></i>
                        </button>
                    </div>

                    <div class="product-info">
                        <div class="product-category">${escapeHTML(product.category)}</div>
                        <h3>${escapeHTML(product.title)}</h3>

                        <div class="rating">
                            ${'★'.repeat(product.rating)}${'☆'.repeat(5 - product.rating)}
                            <span>(${product.reviews})</span>
                        </div>

                        <div class="product-bottom">
                            <div class="price">
                                ${formatPrice(product.price)}
                                ${product.oldPrice ? `
                                    <span class="old-price">${formatPrice(product.oldPrice)}</span>
                                ` : ''}
                            </div>

                            <button class="add-btn" data-add="${product.id}"
                                aria-label="Add ${escapeHTML(product.title)} to cart">
                                <i class="fa-solid fa-plus"></i>
                            </button>
                        </div>
                    </div>
                </article>
            `).join('');

            productsGrid.querySelectorAll('[data-add]').forEach(button => {
                button.addEventListener('click', () => {
                    addToCart(Number(button.dataset.add));
                });
            });

            productsGrid.querySelectorAll('[data-wishlist]').forEach(button => {
                button.addEventListener('click', () => {
                    toggleWishlist(Number(button.dataset.wishlist));
                });
            });
        }

        function renderReviews() {
            document.getElementById('reviewsGrid').innerHTML = REVIEWS.map(review => `
                <article class="review-card">
                    <div class="review-stars">${'★'.repeat(review.stars)}</div>
                    <blockquote>“${escapeHTML(review.text)}”</blockquote>
                    <div class="review-author">
                        <img src="${review.avatar}" alt="${escapeHTML(review.name)}" loading="lazy">
                        <div>
                            <strong>${escapeHTML(review.name)}</strong>
                            <span>${escapeHTML(review.role)}</span>
                        </div>
                    </div>
                </article>
            `).join('');
        }

        function setFilter(filter) {
            activeFilter = filter;
            searchQuery = '';
            searchInput.value = '';

            filterRow.querySelectorAll('.filter-btn').forEach(button => {
                button.classList.toggle(
                    'active',
                    button.dataset.filter === filter ||
                    (filter === 'All' && button.dataset.filter === 'All')
                );
            });

            renderProducts();
        }

        function resetFilters() {
            setFilter('All');
        }

        function addToCart(productId) {
            const product = PRODUCTS.find(item => item.id === productId);
            if (!product) return;

            cart.push(product);
            updateCart();
            showToast(`${product.title} added to your bag.`);
        }

        function updateCart() {
            cartCount.textContent = cart.length;
            document.getElementById('cartBtn').setAttribute(
                'aria-label',
                `Shopping cart with ${cart.length} items`
            );
        }

        function toggleWishlist(productId) {
            const product = PRODUCTS.find(item => item.id === productId);
            if (!product) return;

            if (wishlist.has(productId)) {
                wishlist.delete(productId);
                showToast('Removed from your wishlist.');
            } else {
                wishlist.add(productId);
                showToast('Added to your wishlist.');
            }

            renderProducts();
        }

        function viewWishlist() {
            activeFilter = 'Wishlist';
            searchQuery = '';
            searchInput.value = '';

            filterRow.querySelectorAll('.filter-btn').forEach(button => {
                button.classList.remove('active');
            });

            renderProducts();

            document.getElementById('products').scrollIntoView({
                behavior: 'smooth'
            });

            if (wishlist.size === 0) {
                showToast('Your wishlist is empty.');
            }
        }

        function viewCart() {
            if (cart.length === 0) {
                showToast('Your shopping bag is empty.');
                return;
            }

            const total = cart.reduce((sum, product) => sum + product.price, 0);
            const names = cart.map(product => product.title);

            alert(
                'YOUR SHOPPING BAG\n\n' +
                names.map((name, index) => `${index + 1}. ${name}`).join('\n') +
                '\n\nItems: ' + cart.length +
                '\nTotal: ' + formatPrice(total) +
                '\n\nThis is a demo cart. Checkout is not connected.'
            );
        }

        filterRow.addEventListener('click', event => {
            const button = event.target.closest('[data-filter]');
            if (!button) return;

            setFilter(button.dataset.filter);
        });

        document.getElementById('searchForm').addEventListener('submit', event => {
            event.preventDefault();
            searchQuery = searchInput.value.trim();
            activeFilter = 'All';

            filterRow.querySelectorAll('.filter-btn').forEach(button => {
                button.classList.toggle('active', button.dataset.filter === 'All');
            });

            renderProducts();

            document.getElementById('products').scrollIntoView({
                behavior: 'smooth'
            });
        });

        searchInput.addEventListener('input', () => {
            searchQuery = searchInput.value.trim();
            activeFilter = 'All';

            filterRow.querySelectorAll('.filter-btn').forEach(button => {
                button.classList.toggle('active', button.dataset.filter === 'All');
            });

            renderProducts();
        });

        document.getElementById('viewAllProducts').addEventListener('click', () => {
            setFilter('All');
        });

        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({
                behavior: 'smooth'
            });
        });

        document.getElementById('cartBtn').addEventListener('click', viewCart);
        document.getElementById('wishlistHeader').addEventListener('click', viewWishlist);

        document.getElementById('buyDeal').addEventListener('click', () => {
            cart.push({
                id: 100,
                title: 'Featured Laptop Deal',
                price: 999
            });

            updateCart();
            showToast('Featured deal added to your bag.');
        });

        document.getElementById('menuToggle').addEventListener('click', () => {
            const isOpen = navLinks.classList.toggle('open');

            document.getElementById('menuToggle').innerHTML = isOpen
                ? '<i class="fa-solid fa-xmark"></i>'
                : '<i class="fa-solid fa-bars"></i>';
        });

        navLinks.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                navLinks.classList.remove('open');
                document.getElementById('menuToggle').innerHTML =
                    '<i class="fa-solid fa-bars"></i>';
            });
        });

        document.getElementById('newsletterForm').addEventListener('submit', event => {
            event.preventDefault();

            const email = document.getElementById('newsletterEmail');
            const message = document.getElementById('newsletterMsg');

            if (!email.checkValidity()) {
                message.style.color = '#ff9b9b';
                message.textContent = 'Please enter a valid email address.';
                return;
            }

            message.style.color = '#c9f31d';
            message.textContent = 'Thanks for joining! Newsletter signup is a demo.';
            email.value = '';
        });

        function setupDealTimer() {
            const storageKey = 'nexusshopDealDeadline';
            let deadline = Number(localStorage.getItem(storageKey));

            if (!deadline || deadline < Date.now()) {
                deadline = Date.now() + 24 * 60 * 60 * 1000;
                localStorage.setItem(storageKey, String(deadline));
            }

            function tick() {
                let remaining = Math.max(0, deadline - Date.now());

                const days = Math.floor(remaining / 86400000);
                remaining %= 86400000;

                const hours = Math.floor(remaining / 3600000);
                remaining %= 3600000;

                const minutes = Math.floor(remaining / 60000);
                const seconds = Math.floor((remaining % 60000) / 1000);

                document.getElementById('dealDays').textContent =
                    String(days).padStart(2, '0');

                document.getElementById('dealHours').textContent =
                    String(hours).padStart(2, '0');

                document.getElementById('dealMinutes').textContent =
                    String(minutes).padStart(2, '0');

                document.getElementById('dealSeconds').textContent =
                    String(seconds).padStart(2, '0');
            }

            tick();
            setInterval(tick, 1000);
        }

        document.getElementById('year').textContent = new Date().getFullYear();

        renderCategories();
        renderProducts();
        renderReviews();
        updateCart();
        setupDealTimer();
    </script>

</body>
</html>
