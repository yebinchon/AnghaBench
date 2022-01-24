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
struct caam_hash_state {int /*<<< orphan*/  ctx_dma; struct caam_request caam_req; } ;
struct caam_hash_ctx {int ctx_len; int /*<<< orphan*/  dev; int /*<<< orphan*/ * flc_dma; int /*<<< orphan*/ * flc; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {TYPE_1__ base; } ;
struct ahash_edesc {int qm_sg_bytes; int /*<<< orphan*/  qm_sg_dma; struct dpaa2_sg_entry* sgt; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 size_t FINALIZE ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  ahash_done_ctx_src ; 
 struct caam_hash_state* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ahash_edesc*,struct ahash_request*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct dpaa2_sg_entry*,struct caam_hash_state*) ; 
 struct caam_hash_ctx* FUNC3 (struct crypto_ahash*) ; 
 int FUNC4 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC5 (struct ahash_request*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct caam_hash_state*,int,struct dpaa2_sg_entry*,int /*<<< orphan*/ ) ; 
 int* FUNC7 (struct caam_hash_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct dpaa2_sg_entry*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct caam_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct dpaa2_fl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dpaa2_fl_entry*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct dpaa2_fl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct dpaa2_fl_entry*,int) ; 
 int /*<<< orphan*/  dpaa2_fl_sg ; 
 int /*<<< orphan*/  dpaa2_fl_single ; 
 int /*<<< orphan*/  FUNC16 (struct dpaa2_sg_entry*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct dpaa2_fl_entry**,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct ahash_edesc*) ; 
 struct ahash_edesc* FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct ahash_request *req)
{
	struct crypto_ahash *ahash = FUNC5(req);
	struct caam_hash_ctx *ctx = FUNC3(ahash);
	struct caam_hash_state *state = FUNC0(req);
	struct caam_request *req_ctx = &state->caam_req;
	struct dpaa2_fl_entry *in_fle = &req_ctx->fd_flt[1];
	struct dpaa2_fl_entry *out_fle = &req_ctx->fd_flt[0];
	gfp_t flags = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
		      GFP_KERNEL : GFP_ATOMIC;
	int buflen = *FUNC7(state);
	int qm_sg_bytes;
	int digestsize = FUNC4(ahash);
	struct ahash_edesc *edesc;
	struct dpaa2_sg_entry *sg_table;
	int ret;

	/* allocate space for base edesc and link tables */
	edesc = FUNC20(GFP_DMA | flags);
	if (!edesc)
		return -ENOMEM;

	qm_sg_bytes = FUNC18(1 + (buflen ? 1 : 0)) * sizeof(*sg_table);
	sg_table = &edesc->sgt[0];

	ret = FUNC6(ctx->dev, state, ctx->ctx_len, sg_table,
			       DMA_BIDIRECTIONAL);
	if (ret)
		goto unmap_ctx;

	ret = FUNC2(ctx->dev, sg_table + 1, state);
	if (ret)
		goto unmap_ctx;

	FUNC16(sg_table + (buflen ? 1 : 0), true);

	edesc->qm_sg_dma = FUNC9(ctx->dev, sg_table, qm_sg_bytes,
					  DMA_TO_DEVICE);
	if (FUNC10(ctx->dev, edesc->qm_sg_dma)) {
		FUNC8(ctx->dev, "unable to map S/G table\n");
		ret = -ENOMEM;
		goto unmap_ctx;
	}
	edesc->qm_sg_bytes = qm_sg_bytes;

	FUNC17(&req_ctx->fd_flt, 0, sizeof(req_ctx->fd_flt));
	FUNC13(in_fle, true);
	FUNC14(in_fle, dpaa2_fl_sg);
	FUNC12(in_fle, edesc->qm_sg_dma);
	FUNC15(in_fle, ctx->ctx_len + buflen);
	FUNC14(out_fle, dpaa2_fl_single);
	FUNC12(out_fle, state->ctx_dma);
	FUNC15(out_fle, digestsize);

	req_ctx->flc = &ctx->flc[FINALIZE];
	req_ctx->flc_dma = ctx->flc_dma[FINALIZE];
	req_ctx->cbk = ahash_done_ctx_src;
	req_ctx->ctx = &req->base;
	req_ctx->edesc = edesc;

	ret = FUNC11(ctx->dev, req_ctx);
	if (ret == -EINPROGRESS ||
	    (ret == -EBUSY && req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG))
		return ret;

unmap_ctx:
	FUNC1(ctx->dev, edesc, req, DMA_BIDIRECTIONAL);
	FUNC19(edesc);
	return ret;
}