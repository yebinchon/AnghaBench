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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct atmel_sha_reqctx {unsigned int bufcnt; unsigned int offset; int block_size; int flags; struct scatterlist* sg; int /*<<< orphan*/  dma_addr; scalar_t__ buflen; int /*<<< orphan*/  buffer; scalar_t__ total; int /*<<< orphan*/ * digcnt; } ;
struct atmel_sha_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SHA_FLAGS_FINUP ; 
 int SHA_FLAGS_SG ; 
 struct atmel_sha_reqctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_sha_reqctx*) ; 
 int FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_sha_reqctx*,unsigned int) ; 
 int FUNC5 (struct atmel_sha_dev*) ; 
 int FUNC6 (struct atmel_sha_dev*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct scatterlist*) ; 
 scalar_t__ FUNC14 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC15(struct atmel_sha_dev *dd)
{
	struct atmel_sha_reqctx *ctx = FUNC1(dd->req);
	unsigned int length, final, tail;
	struct scatterlist *sg;
	unsigned int count;

	if (!ctx->total)
		return 0;

	if (ctx->bufcnt || ctx->offset)
		return FUNC5(dd);

	FUNC7(dd->dev, "fast: digcnt: 0x%llx 0x%llx, bufcnt: %zd, total: %u\n",
		ctx->digcnt[1], ctx->digcnt[0], ctx->bufcnt, ctx->total);

	sg = ctx->sg;

	if (!FUNC0(sg->offset, sizeof(u32)))
		return FUNC5(dd);

	if (!FUNC14(sg) && !FUNC0(sg->length, ctx->block_size))
		/* size is not ctx->block_size aligned */
		return FUNC5(dd);

	length = FUNC12(ctx->total, sg->length);

	if (FUNC14(sg)) {
		if (!(ctx->flags & SHA_FLAGS_FINUP)) {
			/* not last sg must be ctx->block_size aligned */
			tail = length & (ctx->block_size - 1);
			length -= tail;
		}
	}

	ctx->total -= length;
	ctx->offset = length; /* offset where to start slow */

	final = (ctx->flags & SHA_FLAGS_FINUP) && !ctx->total;

	/* Add padding */
	if (final) {
		tail = length & (ctx->block_size - 1);
		length -= tail;
		ctx->total += tail;
		ctx->offset = length; /* offset where to start slow */

		sg = ctx->sg;
		FUNC2(ctx);

		FUNC4(ctx, length);

		ctx->dma_addr = FUNC10(dd->dev, ctx->buffer,
			ctx->buflen + ctx->block_size, DMA_TO_DEVICE);
		if (FUNC11(dd->dev, ctx->dma_addr)) {
			FUNC8(dd->dev, "dma %zu bytes error\n",
				ctx->buflen + ctx->block_size);
			return FUNC3(dd, -EINVAL);
		}

		if (length == 0) {
			ctx->flags &= ~SHA_FLAGS_SG;
			count = ctx->bufcnt;
			ctx->bufcnt = 0;
			return FUNC6(dd, ctx->dma_addr, count, 0,
					0, final);
		} else {
			ctx->sg = sg;
			if (!FUNC9(dd->dev, ctx->sg, 1,
				DMA_TO_DEVICE)) {
					FUNC8(dd->dev, "dma_map_sg  error\n");
					return FUNC3(dd, -EINVAL);
			}

			ctx->flags |= SHA_FLAGS_SG;

			count = ctx->bufcnt;
			ctx->bufcnt = 0;
			return FUNC6(dd, FUNC13(ctx->sg),
					length, ctx->dma_addr, count, final);
		}
	}

	if (!FUNC9(dd->dev, ctx->sg, 1, DMA_TO_DEVICE)) {
		FUNC8(dd->dev, "dma_map_sg  error\n");
		return FUNC3(dd, -EINVAL);
	}

	ctx->flags |= SHA_FLAGS_SG;

	/* next call does not fail... so no unmap in the case of error */
	return FUNC6(dd, FUNC13(ctx->sg), length, 0,
								0, final);
}