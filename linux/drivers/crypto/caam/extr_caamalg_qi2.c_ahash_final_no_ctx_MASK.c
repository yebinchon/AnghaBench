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
struct dpaa2_fl_entry {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct caam_request {struct ahash_edesc* edesc; TYPE_1__* ctx; int /*<<< orphan*/  cbk; int /*<<< orphan*/  flc_dma; int /*<<< orphan*/ * flc; struct dpaa2_fl_entry* fd_flt; } ;
struct caam_hash_state {int ctx_dma_len; void* ctx_dma; void* buf_dma; int /*<<< orphan*/ * caam_ctx; struct caam_request caam_req; } ;
struct caam_hash_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/ * flc_dma; int /*<<< orphan*/ * flc; } ;
struct TYPE_2__ {int flags; } ;
struct ahash_request {TYPE_1__ base; } ;
struct ahash_edesc {int dummy; } ;
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
 int /*<<< orphan*/ * FUNC5 (struct caam_hash_state*) ; 
 int* FUNC6 (struct caam_hash_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct caam_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct dpaa2_fl_entry*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct dpaa2_fl_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dpaa2_fl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dpaa2_fl_entry*,int) ; 
 int /*<<< orphan*/  dpaa2_fl_single ; 
 int /*<<< orphan*/  FUNC15 (struct dpaa2_fl_entry**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ahash_edesc*) ; 
 struct ahash_edesc* FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct ahash_request *req)
{
	struct crypto_ahash *ahash = FUNC4(req);
	struct caam_hash_ctx *ctx = FUNC2(ahash);
	struct caam_hash_state *state = FUNC0(req);
	struct caam_request *req_ctx = &state->caam_req;
	struct dpaa2_fl_entry *in_fle = &req_ctx->fd_flt[1];
	struct dpaa2_fl_entry *out_fle = &req_ctx->fd_flt[0];
	gfp_t flags = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
		      GFP_KERNEL : GFP_ATOMIC;
	u8 *buf = FUNC5(state);
	int buflen = *FUNC6(state);
	int digestsize = FUNC3(ahash);
	struct ahash_edesc *edesc;
	int ret = -ENOMEM;

	/* allocate space for base edesc and link tables */
	edesc = FUNC17(GFP_DMA | flags);
	if (!edesc)
		return ret;

	if (buflen) {
		state->buf_dma = FUNC8(ctx->dev, buf, buflen,
						DMA_TO_DEVICE);
		if (FUNC9(ctx->dev, state->buf_dma)) {
			FUNC7(ctx->dev, "unable to map src\n");
			goto unmap;
		}
	}

	state->ctx_dma_len = digestsize;
	state->ctx_dma = FUNC8(ctx->dev, state->caam_ctx, digestsize,
					DMA_FROM_DEVICE);
	if (FUNC9(ctx->dev, state->ctx_dma)) {
		FUNC7(ctx->dev, "unable to map ctx\n");
		state->ctx_dma = 0;
		goto unmap;
	}

	FUNC15(&req_ctx->fd_flt, 0, sizeof(req_ctx->fd_flt));
	FUNC12(in_fle, true);
	/*
	 * crypto engine requires the input entry to be present when
	 * "frame list" FD is used.
	 * Since engine does not support FMT=2'b11 (unused entry type), leaving
	 * in_fle zeroized (except for "Final" flag) is the best option.
	 */
	if (buflen) {
		FUNC13(in_fle, dpaa2_fl_single);
		FUNC11(in_fle, state->buf_dma);
		FUNC14(in_fle, buflen);
	}
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
	FUNC16(edesc);
	return ret;
}