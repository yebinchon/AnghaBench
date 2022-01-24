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
struct atmel_sha_reqctx {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  flags; scalar_t__ block_size; scalar_t__ buflen; int /*<<< orphan*/  buffer; } ;
struct atmel_sha_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SHA_FLAGS_SG ; 
 int FUNC0 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct atmel_sha_dev*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct atmel_sha_dev *dd,
					struct atmel_sha_reqctx *ctx,
					size_t length, int final)
{
	ctx->dma_addr = FUNC3(dd->dev, ctx->buffer,
				ctx->buflen + ctx->block_size, DMA_TO_DEVICE);
	if (FUNC4(dd->dev, ctx->dma_addr)) {
		FUNC2(dd->dev, "dma %zu bytes error\n", ctx->buflen +
				ctx->block_size);
		return FUNC0(dd, -EINVAL);
	}

	ctx->flags &= ~SHA_FLAGS_SG;

	/* next call does not fail... so no unmap in the case of error */
	return FUNC1(dd, ctx->dma_addr, length, 0, 0, final);
}