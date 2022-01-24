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
struct n2_hash_req_ctx {int dummy; } ;
struct n2_hash_ctx {struct crypto_ahash* fallback_tfm; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (struct crypto_ahash*) ; 
 int FUNC1 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC2 (struct crypto_tfm*) ; 
 struct n2_hash_ctx* FUNC3 (struct crypto_ahash*) ; 
 scalar_t__ FUNC4 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypto_ahash*,scalar_t__) ; 
 struct crypto_ahash* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static int FUNC9(struct crypto_tfm *tfm)
{
	const char *fallback_driver_name = FUNC7(tfm);
	struct crypto_ahash *ahash = FUNC2(tfm);
	struct n2_hash_ctx *ctx = FUNC3(ahash);
	struct crypto_ahash *fallback_tfm;
	int err;

	fallback_tfm = FUNC6(fallback_driver_name, 0,
					  CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC0(fallback_tfm)) {
		FUNC8("Fallback driver '%s' could not be loaded!\n",
			   fallback_driver_name);
		err = FUNC1(fallback_tfm);
		goto out;
	}

	FUNC5(ahash, (sizeof(struct n2_hash_req_ctx) +
					 FUNC4(fallback_tfm)));

	ctx->fallback_tfm = fallback_tfm;
	return 0;

out:
	return err;
}