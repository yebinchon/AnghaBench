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
struct hmac_ctx {int /*<<< orphan*/ * base_hash; } ;
struct crypto_tfm {int dummy; } ;
struct chcr_context {int dummy; } ;

/* Variables and functions */
 struct hmac_ctx* FUNC0 (struct chcr_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct chcr_context* FUNC2 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct chcr_context *ctx = FUNC2(tfm);
	struct hmac_ctx *hmacctx = FUNC0(ctx);

	if (hmacctx->base_hash) {
		FUNC1(hmacctx->base_hash);
		hmacctx->base_hash = NULL;
	}
}