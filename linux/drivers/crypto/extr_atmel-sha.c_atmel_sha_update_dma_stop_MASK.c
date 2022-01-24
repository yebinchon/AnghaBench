#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct atmel_sha_reqctx {int flags; scalar_t__ offset; scalar_t__ block_size; scalar_t__ buflen; int /*<<< orphan*/  dma_addr; TYPE_1__* sg; } ;
struct atmel_sha_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;
struct TYPE_4__ {scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int SHA_FLAGS_PAD ; 
 int SHA_FLAGS_SG ; 
 struct atmel_sha_reqctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct atmel_sha_dev *dd)
{
	struct atmel_sha_reqctx *ctx = FUNC0(dd->req);

	if (ctx->flags & SHA_FLAGS_SG) {
		FUNC1(dd->dev, ctx->sg, 1, DMA_TO_DEVICE);
		if (ctx->sg->length == ctx->offset) {
			ctx->sg = FUNC3(ctx->sg);
			if (ctx->sg)
				ctx->offset = 0;
		}
		if (ctx->flags & SHA_FLAGS_PAD) {
			FUNC2(dd->dev, ctx->dma_addr,
				ctx->buflen + ctx->block_size, DMA_TO_DEVICE);
		}
	} else {
		FUNC2(dd->dev, ctx->dma_addr, ctx->buflen +
						ctx->block_size, DMA_TO_DEVICE);
	}

	return 0;
}