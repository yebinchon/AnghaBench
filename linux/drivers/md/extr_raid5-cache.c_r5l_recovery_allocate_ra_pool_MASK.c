#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r5l_recovery_ctx {size_t total_pages; scalar_t__ pool_offset; int /*<<< orphan*/  ra_bio; struct page** ra_pool; scalar_t__ valid_pages; } ;
struct r5l_log {int /*<<< orphan*/  bs; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t R5L_RECOVERY_PAGE_POOL_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct r5l_log *log,
					    struct r5l_recovery_ctx *ctx)
{
	struct page *page;

	ctx->ra_bio = FUNC1(GFP_KERNEL, BIO_MAX_PAGES, &log->bs);
	if (!ctx->ra_bio)
		return -ENOMEM;

	ctx->valid_pages = 0;
	ctx->total_pages = 0;
	while (ctx->total_pages < R5L_RECOVERY_PAGE_POOL_SIZE) {
		page = FUNC0(GFP_KERNEL);

		if (!page)
			break;
		ctx->ra_pool[ctx->total_pages] = page;
		ctx->total_pages += 1;
	}

	if (ctx->total_pages == 0) {
		FUNC2(ctx->ra_bio);
		return -ENOMEM;
	}

	ctx->pool_offset = 0;
	return 0;
}