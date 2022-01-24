#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct r5l_recovery_ctx {size_t valid_pages; size_t total_pages; TYPE_3__* ra_bio; int /*<<< orphan*/ * ra_pool; scalar_t__ pool_offset; } ;
struct r5l_log {TYPE_2__* rdev; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_8__ {scalar_t__ bi_sector; } ;
struct TYPE_10__ {TYPE_1__ bi_iter; } ;
struct TYPE_9__ {scalar_t__ data_offset; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_SECTORS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct r5l_log*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(struct r5l_log *log,
				      struct r5l_recovery_ctx *ctx,
				      sector_t offset)
{
	FUNC1(ctx->ra_bio);
	FUNC2(ctx->ra_bio, log->rdev->bdev);
	FUNC3(ctx->ra_bio, REQ_OP_READ, 0);
	ctx->ra_bio->bi_iter.bi_sector = log->rdev->data_offset + offset;

	ctx->valid_pages = 0;
	ctx->pool_offset = offset;

	while (ctx->valid_pages < ctx->total_pages) {
		FUNC0(ctx->ra_bio,
			     ctx->ra_pool[ctx->valid_pages], PAGE_SIZE, 0);
		ctx->valid_pages += 1;

		offset = FUNC4(log, offset, BLOCK_SECTORS);

		if (offset == 0)  /* reached end of the device */
			break;
	}

	return FUNC5(ctx->ra_bio);
}