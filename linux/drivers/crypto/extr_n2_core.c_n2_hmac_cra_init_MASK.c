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
struct TYPE_2__ {struct crypto_shash* fallback_tfm; } ;
struct n2_hmac_ctx {TYPE_1__ base; struct crypto_shash* child_shash; } ;
struct n2_hmac_alg {char const* child_alg; } ;
struct n2_hash_req_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_shash {int dummy; } ;
typedef  struct crypto_shash crypto_ahash ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 struct crypto_shash* FUNC2 (struct crypto_tfm*) ; 
 struct n2_hmac_ctx* FUNC3 (struct crypto_shash*) ; 
 scalar_t__ FUNC4 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_shash*,scalar_t__) ; 
 struct crypto_shash* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_shash* FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_shash*) ; 
 char* FUNC9 (struct crypto_tfm*) ; 
 struct n2_hmac_alg* FUNC10 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

__attribute__((used)) static int FUNC12(struct crypto_tfm *tfm)
{
	const char *fallback_driver_name = FUNC9(tfm);
	struct crypto_ahash *ahash = FUNC2(tfm);
	struct n2_hmac_ctx *ctx = FUNC3(ahash);
	struct n2_hmac_alg *n2alg = FUNC10(tfm);
	struct crypto_ahash *fallback_tfm;
	struct crypto_shash *child_shash;
	int err;

	fallback_tfm = FUNC6(fallback_driver_name, 0,
					  CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC0(fallback_tfm)) {
		FUNC11("Fallback driver '%s' could not be loaded!\n",
			   fallback_driver_name);
		err = FUNC1(fallback_tfm);
		goto out;
	}

	child_shash = FUNC7(n2alg->child_alg, 0, 0);
	if (FUNC0(child_shash)) {
		FUNC11("Child shash '%s' could not be loaded!\n",
			   n2alg->child_alg);
		err = FUNC1(child_shash);
		goto out_free_fallback;
	}

	FUNC5(ahash, (sizeof(struct n2_hash_req_ctx) +
					 FUNC4(fallback_tfm)));

	ctx->child_shash = child_shash;
	ctx->base.fallback_tfm = fallback_tfm;
	return 0;

out_free_fallback:
	FUNC8(fallback_tfm);

out:
	return err;
}