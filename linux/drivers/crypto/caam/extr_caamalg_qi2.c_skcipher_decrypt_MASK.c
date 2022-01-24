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
struct TYPE_2__ {int flags; } ;
struct skcipher_request {TYPE_1__ base; int /*<<< orphan*/  cryptlen; } ;
struct skcipher_edesc {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct caam_request {struct skcipher_edesc* edesc; TYPE_1__* ctx; int /*<<< orphan*/  cbk; int /*<<< orphan*/  flc_dma; int /*<<< orphan*/ * flc; } ;
struct caam_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/ * flc_dma; int /*<<< orphan*/ * flc; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 size_t DECRYPT ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (struct skcipher_edesc*) ; 
 int FUNC1 (struct skcipher_edesc*) ; 
 struct caam_ctx* FUNC2 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (struct skcipher_request*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct caam_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_edesc*) ; 
 int /*<<< orphan*/  skcipher_decrypt_done ; 
 struct skcipher_edesc* FUNC6 (struct skcipher_request*) ; 
 struct caam_request* FUNC7 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct skcipher_edesc*,struct skcipher_request*) ; 

__attribute__((used)) static int FUNC9(struct skcipher_request *req)
{
	struct skcipher_edesc *edesc;
	struct crypto_skcipher *skcipher = FUNC3(req);
	struct caam_ctx *ctx = FUNC2(skcipher);
	struct caam_request *caam_req = FUNC7(req);
	int ret;

	if (!req->cryptlen)
		return 0;
	/* allocate extended descriptor */
	edesc = FUNC6(req);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	caam_req->flc = &ctx->flc[DECRYPT];
	caam_req->flc_dma = ctx->flc_dma[DECRYPT];
	caam_req->cbk = skcipher_decrypt_done;
	caam_req->ctx = &req->base;
	caam_req->edesc = edesc;
	ret = FUNC4(ctx->dev, caam_req);
	if (ret != -EINPROGRESS &&
	    !(ret == -EBUSY && req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {
		FUNC8(ctx->dev, edesc, req);
		FUNC5(edesc);
	}

	return ret;
}