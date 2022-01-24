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
struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct crypto_async_request {struct crypto_tfm* tfm; } ;
struct chcr_context {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  complete; } ;
struct adapter {TYPE_1__ chcr_stats; } ;
struct TYPE_4__ {int cra_flags; } ;

/* Variables and functions */
#define  CRYPTO_ALG_TYPE_ABLKCIPHER 130 
#define  CRYPTO_ALG_TYPE_AEAD 129 
#define  CRYPTO_ALG_TYPE_AHASH 128 
 int CRYPTO_ALG_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 struct chcr_context* FUNC7 (struct crypto_tfm*) ; 
 struct adapter* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct crypto_async_request *req, unsigned char *input,
			 int err)
{
	struct crypto_tfm *tfm = req->tfm;
	struct chcr_context *ctx = FUNC7(tfm);
	struct adapter *adap = FUNC8(ctx->dev);

	switch (tfm->__crt_alg->cra_flags & CRYPTO_ALG_TYPE_MASK) {
	case CRYPTO_ALG_TYPE_AEAD:
		err = FUNC4(FUNC1(req), input, err);
		break;

	case CRYPTO_ALG_TYPE_ABLKCIPHER:
		 FUNC6(FUNC0(req),
					       input, err);
		break;
	case CRYPTO_ALG_TYPE_AHASH:
		FUNC5(FUNC2(req), input, err);
		}
	FUNC3(&adap->chcr_stats.complete);
	return err;
}