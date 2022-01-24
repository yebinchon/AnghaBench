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
struct dpaa2_sg_entry {int dummy; } ;
struct dpaa2_fl_entry {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct caam_request {struct ahash_edesc* edesc; TYPE_1__* ctx; int /*<<< orphan*/  cbk; int /*<<< orphan*/  flc_dma; int /*<<< orphan*/ * flc; struct dpaa2_fl_entry* fd_flt; } ;
struct caam_hash_state {int ctx_dma_len; void* ctx_dma; struct dpaa2_sg_entry* caam_ctx; scalar_t__ buf_dma; struct caam_request caam_req; } ;
struct caam_hash_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/ * flc_dma; int /*<<< orphan*/ * flc; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {int nbytes; TYPE_1__ base; int /*<<< orphan*/  src; } ;
struct ahash_edesc {int src_nents; int qm_sg_bytes; void* qm_sg_dma; struct dpaa2_sg_entry* sgt; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 size_t DIGEST ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  ahash_done ; 
 struct caam_hash_state* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ahash_edesc*,struct ahash_request*,int /*<<< orphan*/ ) ; 
 struct caam_hash_ctx* FUNC2 (struct crypto_ahash*) ; 
 int FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,struct dpaa2_sg_entry*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct caam_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct dpaa2_fl_entry*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct dpaa2_fl_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dpaa2_fl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dpaa2_fl_entry*,int) ; 
 int /*<<< orphan*/  dpaa2_fl_sg ; 
 int /*<<< orphan*/  dpaa2_fl_single ; 
 int /*<<< orphan*/  FUNC15 (struct dpaa2_fl_entry**,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct ahash_edesc*) ; 
 struct ahash_edesc* FUNC18 (int) ; 
 void* FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,struct dpaa2_sg_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct ahash_request *req)
{
	struct crypto_ahash *ahash = FUNC4(req);
	struct caam_hash_ctx *ctx = FUNC2(ahash);
	struct caam_hash_state *state = FUNC0(req);
	struct caam_request *req_ctx = &state->caam_req;
	struct dpaa2_fl_entry *in_fle = &req_ctx->fd_flt[1];
	struct dpaa2_fl_entry *out_fle = &req_ctx->fd_flt[0];
	gfp_t flags = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
		      GFP_KERNEL : GFP_ATOMIC;
	int digestsize = FUNC3(ahash);
	int src_nents, mapped_nents;
	struct ahash_edesc *edesc;
	int ret = -ENOMEM;

	state->buf_dma = 0;

	src_nents = FUNC20(req->src, req->nbytes);
	if (src_nents < 0) {
		FUNC5(ctx->dev, "Invalid number of src SG.\n");
		return src_nents;
	}

	if (src_nents) {
		mapped_nents = FUNC6(ctx->dev, req->src, src_nents,
					  DMA_TO_DEVICE);
		if (!mapped_nents) {
			FUNC5(ctx->dev, "unable to map source for DMA\n");
			return ret;
		}
	} else {
		mapped_nents = 0;
	}

	/* allocate space for base edesc and link tables */
	edesc = FUNC18(GFP_DMA | flags);
	if (!edesc) {
		FUNC9(ctx->dev, req->src, src_nents, DMA_TO_DEVICE);
		return ret;
	}

	edesc->src_nents = src_nents;
	FUNC15(&req_ctx->fd_flt, 0, sizeof(req_ctx->fd_flt));

	if (mapped_nents > 1) {
		int qm_sg_bytes;
		struct dpaa2_sg_entry *sg_table = &edesc->sgt[0];

		qm_sg_bytes = FUNC16(mapped_nents) * sizeof(*sg_table);
		FUNC21(req->src, req->nbytes, sg_table, 0);
		edesc->qm_sg_dma = FUNC7(ctx->dev, sg_table,
						  qm_sg_bytes, DMA_TO_DEVICE);
		if (FUNC8(ctx->dev, edesc->qm_sg_dma)) {
			FUNC5(ctx->dev, "unable to map S/G table\n");
			goto unmap;
		}
		edesc->qm_sg_bytes = qm_sg_bytes;
		FUNC13(in_fle, dpaa2_fl_sg);
		FUNC11(in_fle, edesc->qm_sg_dma);
	} else {
		FUNC13(in_fle, dpaa2_fl_single);
		FUNC11(in_fle, FUNC19(req->src));
	}

	state->ctx_dma_len = digestsize;
	state->ctx_dma = FUNC7(ctx->dev, state->caam_ctx, digestsize,
					DMA_FROM_DEVICE);
	if (FUNC8(ctx->dev, state->ctx_dma)) {
		FUNC5(ctx->dev, "unable to map ctx\n");
		state->ctx_dma = 0;
		goto unmap;
	}

	FUNC12(in_fle, true);
	FUNC14(in_fle, req->nbytes);
	FUNC13(out_fle, dpaa2_fl_single);
	FUNC11(out_fle, state->ctx_dma);
	FUNC14(out_fle, digestsize);

	req_ctx->flc = &ctx->flc[DIGEST];
	req_ctx->flc_dma = ctx->flc_dma[DIGEST];
	req_ctx->cbk = ahash_done;
	req_ctx->ctx = &req->base;
	req_ctx->edesc = edesc;
	ret = FUNC10(ctx->dev, req_ctx);
	if (ret == -EINPROGRESS ||
	    (ret == -EBUSY && req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG))
		return ret;

unmap:
	FUNC1(ctx->dev, edesc, req, DMA_FROM_DEVICE);
	FUNC17(edesc);
	return ret;
}