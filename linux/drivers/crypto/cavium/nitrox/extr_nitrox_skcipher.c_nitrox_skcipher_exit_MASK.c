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
struct TYPE_2__ {scalar_t__ ctx_handle; struct flexi_crypto_context* fctx; } ;
struct nitrox_crypto_ctx {int /*<<< orphan*/ * ndev; TYPE_1__ u; scalar_t__ chdr; } ;
struct flexi_crypto_context {int /*<<< orphan*/  auth; int /*<<< orphan*/  crypto; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_keys {int dummy; } ;
struct auth_keys {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct nitrox_crypto_ctx* FUNC1 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct crypto_skcipher *tfm)
{
	struct nitrox_crypto_ctx *nctx = FUNC1(tfm);

	/* free the nitrox crypto context */
	if (nctx->u.ctx_handle) {
		struct flexi_crypto_context *fctx = nctx->u.fctx;

		FUNC2(&fctx->crypto, sizeof(struct crypto_keys));
		FUNC2(&fctx->auth, sizeof(struct auth_keys));
		FUNC0((void *)nctx->chdr);
	}
	FUNC3(nctx->ndev);

	nctx->u.ctx_handle = 0;
	nctx->ndev = NULL;
}