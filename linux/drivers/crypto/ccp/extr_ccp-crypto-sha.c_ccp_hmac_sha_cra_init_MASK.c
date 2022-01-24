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
struct crypto_tfm {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_3__ {struct crypto_shash* hmac_tfm; } ;
struct TYPE_4__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct ccp_crypto_ahash_alg {int /*<<< orphan*/  child_alg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct ccp_crypto_ahash_alg* FUNC2 (struct crypto_tfm*) ; 
 int FUNC3 (struct crypto_tfm*) ; 
 struct crypto_shash* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ccp_ctx* FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm)
{
	struct ccp_ctx *ctx = FUNC5(tfm);
	struct ccp_crypto_ahash_alg *alg = FUNC2(tfm);
	struct crypto_shash *hmac_tfm;

	hmac_tfm = FUNC4(alg->child_alg, 0, 0);
	if (FUNC0(hmac_tfm)) {
		FUNC6("could not load driver %s need for HMAC support\n",
			alg->child_alg);
		return FUNC1(hmac_tfm);
	}

	ctx->u.sha.hmac_tfm = hmac_tfm;

	return FUNC3(tfm);
}