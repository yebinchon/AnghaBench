#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct se_crypto_request {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ctx_handle; struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {int /*<<< orphan*/  ndev; TYPE_4__ u; } ;
struct TYPE_5__ {struct se_crypto_request creq; } ;
struct nitrox_aead_rctx {int /*<<< orphan*/  ctrl_arg; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  ctx_handle; int /*<<< orphan*/  flags; scalar_t__ ivsize; int /*<<< orphan*/ * iv; scalar_t__ srclen; scalar_t__ dstlen; scalar_t__ assoclen; scalar_t__ cryptlen; TYPE_1__ nkreq; } ;
struct TYPE_6__ {int /*<<< orphan*/  iv; } ;
struct flexi_crypto_context {TYPE_2__ crypto; } ;
struct crypto_aead {scalar_t__ authsize; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct aead_request {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_3__ base; int /*<<< orphan*/ * iv; scalar_t__ cryptlen; scalar_t__ assoclen; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENCRYPT ; 
 scalar_t__ GCM_AES_IV_SIZE ; 
 size_t GCM_AES_SALT_SIZE ; 
 struct nitrox_aead_rctx* FUNC0 (struct aead_request*) ; 
 struct nitrox_crypto_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  nitrox_aead_callback ; 
 int FUNC4 (int /*<<< orphan*/ ,struct se_crypto_request*,int /*<<< orphan*/ ,struct aead_request*) ; 
 int FUNC5 (struct nitrox_aead_rctx*) ; 

__attribute__((used)) static int FUNC6(struct aead_request *areq)
{
	struct crypto_aead *aead = FUNC2(areq);
	struct nitrox_crypto_ctx *nctx = FUNC1(aead);
	struct nitrox_aead_rctx *rctx = FUNC0(areq);
	struct se_crypto_request *creq = &rctx->nkreq.creq;
	struct flexi_crypto_context *fctx = nctx->u.fctx;
	int ret;

	FUNC3(fctx->crypto.iv, areq->iv, GCM_AES_SALT_SIZE);

	rctx->cryptlen = areq->cryptlen;
	rctx->assoclen = areq->assoclen;
	rctx->srclen = areq->assoclen + areq->cryptlen;
	rctx->dstlen = rctx->srclen + aead->authsize;
	rctx->iv = &areq->iv[GCM_AES_SALT_SIZE];
	rctx->ivsize = GCM_AES_IV_SIZE - GCM_AES_SALT_SIZE;
	rctx->flags = areq->base.flags;
	rctx->ctx_handle = nctx->u.ctx_handle;
	rctx->src = areq->src;
	rctx->dst = areq->dst;
	rctx->ctrl_arg = ENCRYPT;
	ret = FUNC5(rctx);
	if (ret)
		return ret;

	/* send the crypto request */
	return FUNC4(nctx->ndev, creq, nitrox_aead_callback,
					 areq);
}