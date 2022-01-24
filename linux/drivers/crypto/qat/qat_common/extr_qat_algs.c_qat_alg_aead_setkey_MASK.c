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
typedef  int /*<<< orphan*/  uint8_t ;
struct qat_alg_aead_ctx {scalar_t__ enc_cd; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 struct qat_alg_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 int FUNC1 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC2 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_aead *tfm, const uint8_t *key,
			       unsigned int keylen)
{
	struct qat_alg_aead_ctx *ctx = FUNC0(tfm);

	if (ctx->enc_cd)
		return FUNC2(tfm, key, keylen);
	else
		return FUNC1(tfm, key, keylen);
}