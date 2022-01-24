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
struct qat_rsa_ctx {struct qat_crypto_instance* inst; scalar_t__ key_sz; } ;
struct qat_crypto_instance {int dummy; } ;
struct crypto_akcipher {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct qat_rsa_ctx* FUNC0 (struct crypto_akcipher*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct qat_crypto_instance* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct crypto_akcipher *tfm)
{
	struct qat_rsa_ctx *ctx = FUNC0(tfm);
	struct qat_crypto_instance *inst =
			FUNC2(FUNC1());

	if (!inst)
		return -EINVAL;

	ctx->key_sz = 0;
	ctx->inst = inst;
	return 0;
}