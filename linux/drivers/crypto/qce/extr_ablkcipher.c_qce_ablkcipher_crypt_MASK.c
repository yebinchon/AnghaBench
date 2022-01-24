#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qce_cipher_reqctx {int /*<<< orphan*/  flags; } ;
struct qce_cipher_ctx {scalar_t__ enc_keylen; int /*<<< orphan*/  fallback; } ;
struct qce_alg_template {TYPE_1__* qce; int /*<<< orphan*/  alg_flags; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct ablkcipher_request {TYPE_2__ base; int /*<<< orphan*/  info; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int (* async_req_enqueue ) (TYPE_1__*,TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ AES_KEYSIZE_128 ; 
 scalar_t__ AES_KEYSIZE_256 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QCE_DECRYPT ; 
 int /*<<< orphan*/  QCE_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qce_cipher_reqctx* FUNC2 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*) ; 
 struct crypto_tfm* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct qce_cipher_ctx* FUNC7 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  subreq ; 
 struct qce_alg_template* FUNC13 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC14(struct ablkcipher_request *req, int encrypt)
{
	struct crypto_tfm *tfm =
			FUNC4(FUNC3(req));
	struct qce_cipher_ctx *ctx = FUNC7(tfm);
	struct qce_cipher_reqctx *rctx = FUNC2(req);
	struct qce_alg_template *tmpl = FUNC13(tfm);
	int ret;

	rctx->flags = tmpl->alg_flags;
	rctx->flags |= encrypt ? QCE_ENCRYPT : QCE_DECRYPT;

	if (FUNC0(rctx->flags) && ctx->enc_keylen != AES_KEYSIZE_128 &&
	    ctx->enc_keylen != AES_KEYSIZE_256) {
		FUNC1(subreq, ctx->fallback);

		FUNC10(subreq, ctx->fallback);
		FUNC8(subreq, req->base.flags,
					      NULL, NULL);
		FUNC9(subreq, req->src, req->dst,
					   req->nbytes, req->info);
		ret = encrypt ? FUNC6(subreq) :
				FUNC5(subreq);
		FUNC11(subreq);
		return ret;
	}

	return tmpl->qce->async_req_enqueue(tmpl->qce, &req->base);
}