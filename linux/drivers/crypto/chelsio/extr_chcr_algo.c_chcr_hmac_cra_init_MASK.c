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
struct hmac_ctx {int /*<<< orphan*/  base_hash; } ;
struct crypto_tfm {int dummy; } ;
struct chcr_context {int dummy; } ;
struct chcr_ahash_req_ctx {int dummy; } ;

/* Variables and functions */
 struct hmac_ctx* FUNC0 (struct chcr_context*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int FUNC5 (struct chcr_context*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct chcr_context* FUNC8 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC9(struct crypto_tfm *tfm)
{
	struct chcr_context *ctx = FUNC8(tfm);
	struct hmac_ctx *hmacctx = FUNC0(ctx);
	unsigned int digestsize =
		FUNC6(FUNC3(tfm));

	FUNC7(FUNC3(tfm),
				 sizeof(struct chcr_ahash_req_ctx));
	hmacctx->base_hash = FUNC4(digestsize);
	if (FUNC1(hmacctx->base_hash))
		return FUNC2(hmacctx->base_hash);
	return FUNC5(FUNC8(tfm));
}