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
struct crypto_tfm {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct artpec6_hashalg_context {struct crypto_shash* child_hash; } ;
struct artpec6_hash_request_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct crypto_shash* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct artpec6_hashalg_context* FUNC5 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC6 (struct artpec6_hashalg_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm,
				    const char *base_hash_name)
{
	struct artpec6_hashalg_context *tfm_ctx = FUNC5(tfm);

	FUNC3(FUNC2(tfm),
				 sizeof(struct artpec6_hash_request_context));
	FUNC6(tfm_ctx, 0, sizeof(*tfm_ctx));

	if (base_hash_name) {
		struct crypto_shash *child;

		child = FUNC4(base_hash_name, 0,
					   CRYPTO_ALG_NEED_FALLBACK);

		if (FUNC0(child))
			return FUNC1(child);

		tfm_ctx->child_hash = child;
	}

	return 0;
}