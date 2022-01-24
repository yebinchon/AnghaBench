#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct scatterlist {int dummy; } ;
struct mtk_cryp {int dummy; } ;
struct mtk_aes_rec {scalar_t__ total; int /*<<< orphan*/  areq; struct mtk_aes_base_ctx* ctx; } ;
struct mtk_aes_ctr_ctx {scalar_t__ offset; int /*<<< orphan*/ * iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct mtk_aes_base_ctx {scalar_t__ keylen; TYPE_1__ info; } ;
struct ablkcipher_request {scalar_t__ nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int FUNC0 (size_t,int) ; 
 struct ablkcipher_request* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct mtk_aes_ctr_ctx* FUNC5 (struct mtk_aes_base_ctx*) ; 
 int FUNC6 (struct mtk_cryp*,struct mtk_aes_rec*,struct scatterlist*,struct scatterlist*,size_t) ; 
 int FUNC7 (struct mtk_cryp*,struct mtk_aes_rec*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 struct scatterlist* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
{
	struct mtk_aes_base_ctx *ctx = aes->ctx;
	struct mtk_aes_ctr_ctx *cctx = FUNC5(ctx);
	struct ablkcipher_request *req = FUNC1(aes->areq);
	struct scatterlist *src, *dst;
	u32 start, end, ctr, blocks;
	size_t datalen;
	bool fragmented = false;

	/* Check for transfer completion. */
	cctx->offset += aes->total;
	if (cctx->offset >= req->nbytes)
		return FUNC7(cryp, aes);

	/* Compute data length. */
	datalen = req->nbytes - cctx->offset;
	blocks = FUNC0(datalen, AES_BLOCK_SIZE);
	ctr = FUNC2(cctx->iv[3]);

	/* Check 32bit counter overflow. */
	start = ctr;
	end = start + blocks - 1;
	if (end < start) {
		ctr |= 0xffffffff;
		datalen = AES_BLOCK_SIZE * -start;
		fragmented = true;
	}

	/* Jump to offset. */
	src = FUNC9(cctx->src, req->src, cctx->offset);
	dst = ((req->src == req->dst) ? src :
	       FUNC9(cctx->dst, req->dst, cctx->offset));

	/* Write IVs into transform state buffer. */
	FUNC8(ctx->info.state + ctx->keylen, cctx->iv,
			       AES_BLOCK_SIZE);

	if (FUNC10(fragmented)) {
	/*
	 * Increment the counter manually to cope with the hardware
	 * counter overflow.
	 */
		cctx->iv[3] = FUNC3(ctr);
		FUNC4((u8 *)cctx->iv, AES_BLOCK_SIZE);
	}

	return FUNC6(cryp, aes, src, dst, datalen);
}