#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  des; } ;
struct n2_cipher_context {unsigned int key_len; TYPE_1__ key; int /*<<< orphan*/  enc_type; } ;
struct n2_cipher_alg {int /*<<< orphan*/  enc_type; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 struct crypto_tfm* FUNC0 (struct crypto_ablkcipher*) ; 
 struct n2_cipher_context* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct n2_cipher_alg* FUNC3 (struct crypto_tfm*) ; 
 int FUNC4 (struct crypto_ablkcipher*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(struct crypto_ablkcipher *cipher, const u8 *key,
			 unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC0(cipher);
	struct n2_cipher_context *ctx = FUNC1(tfm);
	struct n2_cipher_alg *n2alg = FUNC3(tfm);
	int err;

	err = FUNC4(cipher, key);
	if (err)
		return err;

	ctx->enc_type = n2alg->enc_type;

	ctx->key_len = keylen;
	FUNC2(ctx->key.des, key, keylen);
	return 0;
}