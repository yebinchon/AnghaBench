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
struct qat_crypto_request {int dummy; } ;
struct qat_alg_aead_ctx {int qat_hash_alg; int /*<<< orphan*/  hash_tfm; } ;
struct crypto_aead {int dummy; } ;
typedef  enum icp_qat_hw_auth_algo { ____Placeholder_icp_qat_hw_auth_algo } icp_qat_hw_auth_algo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct qat_alg_aead_ctx* FUNC2 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct crypto_aead *tfm,
			     enum icp_qat_hw_auth_algo hash,
			     const char *hash_name)
{
	struct qat_alg_aead_ctx *ctx = FUNC2(tfm);

	ctx->hash_tfm = FUNC4(hash_name, 0, 0);
	if (FUNC0(ctx->hash_tfm))
		return FUNC1(ctx->hash_tfm);
	ctx->qat_hash_alg = hash;
	FUNC3(tfm, sizeof(struct qat_crypto_request));
	return 0;
}