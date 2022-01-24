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
struct qce_cipher_ctx {unsigned int enc_keylen; int /*<<< orphan*/  enc_key; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 struct qce_cipher_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC2 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(struct crypto_ablkcipher *ablk, const u8 *key,
			   unsigned int keylen)
{
	struct qce_cipher_ctx *ctx = FUNC0(ablk);
	int err;

	err = FUNC2(ablk, key);
	if (err)
		return err;

	ctx->enc_keylen = keylen;
	FUNC1(ctx->enc_key, key, keylen);
	return 0;
}