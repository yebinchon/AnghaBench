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
struct stm32_cryp_reqctx {int mode; } ;
struct stm32_cryp_ctx {struct stm32_cryp* cryp; } ;
struct stm32_cryp {int flags; int in_sg_len; int out_sg_len; struct aead_request* areq; scalar_t__ total_out; int /*<<< orphan*/  out_walk; int /*<<< orphan*/  out_sg; int /*<<< orphan*/  in_sg; int /*<<< orphan*/  in_walk; int /*<<< orphan*/  dev; scalar_t__ total_in; int /*<<< orphan*/  out_sg_save; scalar_t__ total_out_save; scalar_t__ total_in_save; scalar_t__ authsize; struct ablkcipher_request* req; struct stm32_cryp_ctx* ctx; int /*<<< orphan*/  hw_blocksize; } ;
struct aead_request {scalar_t__ assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; scalar_t__ cryptlen; } ;
struct ablkcipher_request {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; scalar_t__ nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  DES_BLOCK_SIZE ; 
 int EINVAL ; 
 int ENODEV ; 
 int FLG_MODE_MASK ; 
 struct stm32_cryp_reqctx* FUNC0 (struct ablkcipher_request*) ; 
 struct stm32_cryp_reqctx* FUNC1 (struct aead_request*) ; 
 struct stm32_cryp_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct stm32_cryp_ctx* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct stm32_cryp*) ; 
 scalar_t__ FUNC9 (struct stm32_cryp*) ; 
 scalar_t__ FUNC10 (struct stm32_cryp*) ; 
 scalar_t__ FUNC11 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC15 (struct stm32_cryp*) ; 
 int FUNC16 (struct stm32_cryp*) ; 

__attribute__((used)) static int FUNC17(struct ablkcipher_request *req,
				  struct aead_request *areq)
{
	struct stm32_cryp_ctx *ctx;
	struct stm32_cryp *cryp;
	struct stm32_cryp_reqctx *rctx;
	int ret;

	if (!req && !areq)
		return -EINVAL;

	ctx = req ? FUNC2(FUNC3(req)) :
		    FUNC5(FUNC6(areq));

	cryp = ctx->cryp;

	if (!cryp)
		return -ENODEV;

	rctx = req ? FUNC0(req) : FUNC1(areq);
	rctx->mode &= FLG_MODE_MASK;

	ctx->cryp = cryp;

	cryp->flags = (cryp->flags & ~FLG_MODE_MASK) | rctx->mode;
	cryp->hw_blocksize = FUNC8(cryp) ? AES_BLOCK_SIZE : DES_BLOCK_SIZE;
	cryp->ctx = ctx;

	if (req) {
		cryp->req = req;
		cryp->areq = NULL;
		cryp->total_in = req->nbytes;
		cryp->total_out = cryp->total_in;
	} else {
		/*
		 * Length of input and output data:
		 * Encryption case:
		 *  INPUT  =   AssocData  ||   PlainText
		 *          <- assoclen ->  <- cryptlen ->
		 *          <------- total_in ----------->
		 *
		 *  OUTPUT =   AssocData  ||  CipherText  ||   AuthTag
		 *          <- assoclen ->  <- cryptlen ->  <- authsize ->
		 *          <---------------- total_out ----------------->
		 *
		 * Decryption case:
		 *  INPUT  =   AssocData  ||  CipherText  ||  AuthTag
		 *          <- assoclen ->  <--------- cryptlen --------->
		 *                                          <- authsize ->
		 *          <---------------- total_in ------------------>
		 *
		 *  OUTPUT =   AssocData  ||   PlainText
		 *          <- assoclen ->  <- crypten - authsize ->
		 *          <---------- total_out ----------------->
		 */
		cryp->areq = areq;
		cryp->req = NULL;
		cryp->authsize = FUNC4(FUNC6(areq));
		cryp->total_in = areq->assoclen + areq->cryptlen;
		if (FUNC10(cryp))
			/* Append auth tag to output */
			cryp->total_out = cryp->total_in + cryp->authsize;
		else
			/* No auth tag in output */
			cryp->total_out = cryp->total_in - cryp->authsize;
	}

	cryp->total_in_save = cryp->total_in;
	cryp->total_out_save = cryp->total_out;

	cryp->in_sg = req ? req->src : areq->src;
	cryp->out_sg = req ? req->dst : areq->dst;
	cryp->out_sg_save = cryp->out_sg;

	cryp->in_sg_len = FUNC14(cryp->in_sg, cryp->total_in);
	if (cryp->in_sg_len < 0) {
		FUNC7(cryp->dev, "Cannot get in_sg_len\n");
		ret = cryp->in_sg_len;
		return ret;
	}

	cryp->out_sg_len = FUNC14(cryp->out_sg, cryp->total_out);
	if (cryp->out_sg_len < 0) {
		FUNC7(cryp->dev, "Cannot get out_sg_len\n");
		ret = cryp->out_sg_len;
		return ret;
	}

	ret = FUNC15(cryp);
	if (ret)
		return ret;

	FUNC13(&cryp->in_walk, cryp->in_sg);
	FUNC13(&cryp->out_walk, cryp->out_sg);

	if (FUNC11(cryp) || FUNC9(cryp)) {
		/* In output, jump after assoc data */
		FUNC12(&cryp->out_walk, cryp->areq->assoclen);
		cryp->total_out -= cryp->areq->assoclen;
	}

	ret = FUNC16(cryp);
	return ret;
}