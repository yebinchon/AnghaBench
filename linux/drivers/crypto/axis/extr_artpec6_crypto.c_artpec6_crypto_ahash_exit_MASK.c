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
struct artpec6_hashalg_context {scalar_t__ hmac_key_length; int /*<<< orphan*/  hmac_key; scalar_t__ child_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct artpec6_hashalg_context* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm)
{
	struct artpec6_hashalg_context *tfm_ctx = FUNC1(tfm);

	if (tfm_ctx->child_hash)
		FUNC0(tfm_ctx->child_hash);

	FUNC2(tfm_ctx->hmac_key, 0, sizeof(tfm_ctx->hmac_key));
	tfm_ctx->hmac_key_length = 0;
}