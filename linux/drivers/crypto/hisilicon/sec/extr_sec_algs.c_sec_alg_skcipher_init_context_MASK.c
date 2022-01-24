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
typedef  int /*<<< orphan*/  u8 ;
struct sec_alg_tfm_ctx {int cipher_alg; int /*<<< orphan*/  req_template; int /*<<< orphan*/  key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
typedef  enum sec_cipher_alg { ____Placeholder_sec_cipher_alg } sec_cipher_alg ;

/* Variables and functions */
 struct crypto_tfm* FUNC0 (struct crypto_skcipher*) ; 
 struct sec_alg_tfm_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sec_alg_tfm_ctx*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct crypto_skcipher *atfm,
					  const u8 *key,
					  unsigned int keylen,
					  enum sec_cipher_alg alg)
{
	struct crypto_tfm *tfm = FUNC0(atfm);
	struct sec_alg_tfm_ctx *ctx = FUNC1(tfm);

	ctx->cipher_alg = alg;
	FUNC2(ctx->key, key, keylen);
	FUNC3(ctx, &ctx->req_template,
				       ctx->cipher_alg);
}