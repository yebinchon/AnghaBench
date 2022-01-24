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
struct crypto_skcipher {int reqsize; int /*<<< orphan*/  base; } ;
struct artpec6_cryptotfm_context {int /*<<< orphan*/  crypto_type; int /*<<< orphan*/  fallback; } ;
struct artpec6_crypto_request_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARTPEC6_CRYPTO_CIPHER_AES_CTR ; 
 int /*<<< orphan*/  CRYPTO_ALG_NEED_FALLBACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct artpec6_cryptotfm_context* FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct crypto_skcipher *tfm)
{
	struct artpec6_cryptotfm_context *ctx = FUNC3(tfm);

	ctx->fallback =
		FUNC2(FUNC4(&tfm->base),
					   0, CRYPTO_ALG_NEED_FALLBACK);
	if (FUNC0(ctx->fallback))
		return FUNC1(ctx->fallback);

	tfm->reqsize = sizeof(struct artpec6_crypto_request_context);
	ctx->crypto_type = ARTPEC6_CRYPTO_CIPHER_AES_CTR;

	return 0;
}