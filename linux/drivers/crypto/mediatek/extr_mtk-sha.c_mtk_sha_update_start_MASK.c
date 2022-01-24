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
typedef  int u32 ;
struct scatterlist {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct mtk_sha_reqctx {size_t bufcnt; int offset; int bs; int flags; struct scatterlist* sg; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  buffer; scalar_t__ total; } ;
struct mtk_sha_rec {int /*<<< orphan*/  flags; int /*<<< orphan*/  req; } ;
struct mtk_cryp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SHA_BUF_SIZE ; 
 int /*<<< orphan*/  SHA_FLAGS_FINAL ; 
 int SHA_FLAGS_FINUP ; 
 int SHA_FLAGS_SG ; 
 struct mtk_sha_reqctx* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_sha_reqctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_sha_reqctx*,int) ; 
 int FUNC9 (struct mtk_cryp*,struct mtk_sha_rec*) ; 
 int FUNC10 (struct mtk_cryp*,struct mtk_sha_rec*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*) ; 
 scalar_t__ FUNC12 (struct scatterlist*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct mtk_cryp *cryp,
				struct mtk_sha_rec *sha)
{
	struct mtk_sha_reqctx *ctx = FUNC1(sha->req);
	u32 len, final, tail;
	struct scatterlist *sg;

	if (!ctx->total)
		return 0;

	if (ctx->bufcnt || ctx->offset)
		return FUNC9(cryp, sha);

	sg = ctx->sg;

	if (!FUNC0(sg->offset, sizeof(u32)))
		return FUNC9(cryp, sha);

	if (!FUNC12(sg) && !FUNC0(sg->length, ctx->bs))
		/* size is not ctx->bs aligned */
		return FUNC9(cryp, sha);

	len = FUNC6(ctx->total, sg->length);

	if (FUNC12(sg)) {
		if (!(ctx->flags & SHA_FLAGS_FINUP)) {
			/* not last sg must be ctx->bs aligned */
			tail = len & (ctx->bs - 1);
			len -= tail;
		}
	}

	ctx->total -= len;
	ctx->offset = len; /* offset where to start slow */

	final = (ctx->flags & SHA_FLAGS_FINUP) && !ctx->total;

	/* Add padding */
	if (final) {
		size_t count;

		tail = len & (ctx->bs - 1);
		len -= tail;
		ctx->total += tail;
		ctx->offset = len; /* offset where to start slow */

		sg = ctx->sg;
		FUNC7(ctx);
		FUNC8(ctx, len);

		ctx->dma_addr = FUNC4(cryp->dev, ctx->buffer,
					       SHA_BUF_SIZE, DMA_TO_DEVICE);
		if (FUNC13(FUNC5(cryp->dev, ctx->dma_addr))) {
			FUNC2(cryp->dev, "dma map bytes error\n");
			return -EINVAL;
		}

		sha->flags |= SHA_FLAGS_FINAL;
		count = ctx->bufcnt;
		ctx->bufcnt = 0;

		if (len == 0) {
			ctx->flags &= ~SHA_FLAGS_SG;
			return FUNC10(cryp, sha, ctx->dma_addr,
					    count, 0, 0);

		} else {
			ctx->sg = sg;
			if (!FUNC3(cryp->dev, ctx->sg, 1, DMA_TO_DEVICE)) {
				FUNC2(cryp->dev, "dma_map_sg error\n");
				return -EINVAL;
			}

			ctx->flags |= SHA_FLAGS_SG;
			return FUNC10(cryp, sha, FUNC11(ctx->sg),
					    len, ctx->dma_addr, count);
		}
	}

	if (!FUNC3(cryp->dev, ctx->sg, 1, DMA_TO_DEVICE)) {
		FUNC2(cryp->dev, "dma_map_sg  error\n");
		return -EINVAL;
	}

	ctx->flags |= SHA_FLAGS_SG;

	return FUNC10(cryp, sha, FUNC11(ctx->sg),
			    len, 0, 0);
}