#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iproc_reqctx_s {int bd_suppress; int is_final; scalar_t__ total_todo; int /*<<< orphan*/  chan_idx; scalar_t__ dst_nents; scalar_t__ dst_skip; int /*<<< orphan*/ * dst_sg; scalar_t__ src_nents; scalar_t__ src_skip; int /*<<< orphan*/  src_sg; int /*<<< orphan*/  mb_mssg; struct iproc_ctx_s* ctx; TYPE_1__* parent; int /*<<< orphan*/  gfp; } ;
struct iproc_ctx_s {int /*<<< orphan*/  authkeylen; int /*<<< orphan*/  authkey; } ;
struct crypto_ahash {int dummy; } ;
struct brcm_message {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct ahash_request {int nbytes; int /*<<< orphan*/  result; int /*<<< orphan*/  src; TYPE_1__ base; } ;
struct TYPE_5__ {scalar_t__ spu_type; } ;
struct TYPE_6__ {TYPE_2__ spu; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SPU_TYPE_SPU2 ; 
 struct iproc_reqctx_s* FUNC0 (struct ahash_request*) ; 
 struct iproc_ctx_s* FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_ahash*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct iproc_reqctx_s*) ; 
 TYPE_3__ iproc_priv ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct iproc_reqctx_s*) ; 

__attribute__((used)) static int FUNC11(struct ahash_request *req)
{
	struct iproc_reqctx_s *rctx = FUNC0(req);
	struct crypto_ahash *tfm = FUNC2(req);
	struct iproc_ctx_s *ctx = FUNC1(tfm);
	int err = 0;
	const char *alg_name;

	FUNC6("ahash_enqueue() nbytes:%u\n", req->nbytes);

	rctx->gfp = (req->base.flags & (CRYPTO_TFM_REQ_MAY_BACKLOG |
		       CRYPTO_TFM_REQ_MAY_SLEEP)) ? GFP_KERNEL : GFP_ATOMIC;
	rctx->parent = &req->base;
	rctx->ctx = ctx;
	rctx->bd_suppress = true;
	FUNC8(&rctx->mb_mssg, 0, sizeof(struct brcm_message));

	/* Initialize position in src scatterlist */
	rctx->src_sg = req->src;
	rctx->src_skip = 0;
	rctx->src_nents = 0;
	rctx->dst_sg = NULL;
	rctx->dst_skip = 0;
	rctx->dst_nents = 0;

	/* SPU2 hardware does not compute hash of zero length data */
	if ((rctx->is_final == 1) && (rctx->total_todo == 0) &&
	    (iproc_priv.spu.spu_type == SPU_TYPE_SPU2)) {
		alg_name = FUNC4(FUNC3(tfm));
		FUNC6("Doing %sfinal %s zero-len hash request in software\n",
			 rctx->is_final ? "" : "non-", alg_name);
		err = FUNC5((unsigned char *)alg_name, req->result,
			       NULL, 0, NULL, 0, ctx->authkey,
			       ctx->authkeylen);
		if (err < 0)
			FUNC6("Hash request failed with error %d\n", err);
		return err;
	}
	/* Choose a SPU to process this request */
	rctx->chan_idx = FUNC9();

	err = FUNC7(rctx);
	if (err != -EINPROGRESS)
		/* synchronous result */
		FUNC10(rctx);

	if (err == -EAGAIN)
		/*
		 * we saved data in hash carry, but tell crypto API
		 * we successfully completed request.
		 */
		err = 0;

	return err;
}