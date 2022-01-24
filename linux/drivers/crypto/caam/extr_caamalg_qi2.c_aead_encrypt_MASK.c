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
struct crypto_aead {int dummy; } ;
struct caam_request {struct aead_edesc* edesc; TYPE_1__* ctx; int /*<<< orphan*/  cbk; int /*<<< orphan*/  flc_dma; int /*<<< orphan*/ * flc; } ;
struct caam_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/ * flc_dma; int /*<<< orphan*/ * flc; } ;
struct TYPE_2__ {int flags; } ;
struct aead_request {TYPE_1__ base; } ;
struct aead_edesc {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 size_t ENCRYPT ; 
 scalar_t__ FUNC0 (struct aead_edesc*) ; 
 int FUNC1 (struct aead_edesc*) ; 
 struct aead_edesc* FUNC2 (struct aead_request*,int) ; 
 int /*<<< orphan*/  aead_encrypt_done ; 
 struct caam_request* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct aead_edesc*,struct aead_request*) ; 
 struct caam_ctx* FUNC5 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC6 (struct aead_request*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct caam_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct aead_edesc*) ; 

__attribute__((used)) static int FUNC9(struct aead_request *req)
{
	struct aead_edesc *edesc;
	struct crypto_aead *aead = FUNC6(req);
	struct caam_ctx *ctx = FUNC5(aead);
	struct caam_request *caam_req = FUNC3(req);
	int ret;

	/* allocate extended descriptor */
	edesc = FUNC2(req, true);
	if (FUNC0(edesc))
		return FUNC1(edesc);

	caam_req->flc = &ctx->flc[ENCRYPT];
	caam_req->flc_dma = ctx->flc_dma[ENCRYPT];
	caam_req->cbk = aead_encrypt_done;
	caam_req->ctx = &req->base;
	caam_req->edesc = edesc;
	ret = FUNC7(ctx->dev, caam_req);
	if (ret != -EINPROGRESS &&
	    !(ret == -EBUSY && req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {
		FUNC4(ctx->dev, edesc, req);
		FUNC8(edesc);
	}

	return ret;
}