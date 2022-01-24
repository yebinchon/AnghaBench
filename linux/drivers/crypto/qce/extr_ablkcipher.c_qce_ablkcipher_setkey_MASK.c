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
struct qce_cipher_ctx {unsigned int enc_keylen; int /*<<< orphan*/  fallback; int /*<<< orphan*/  enc_key; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
#define  AES_KEYSIZE_128 129 
#define  AES_KEYSIZE_256 128 
 int EINVAL ; 
 struct crypto_tfm* FUNC0 (struct crypto_ablkcipher*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct qce_cipher_ctx* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *ablk, const u8 *key,
				 unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC0(ablk);
	struct qce_cipher_ctx *ctx = FUNC2(tfm);
	int ret;

	if (!key || !keylen)
		return -EINVAL;

	switch (keylen) {
	case AES_KEYSIZE_128:
	case AES_KEYSIZE_256:
		break;
	default:
		goto fallback;
	}

	ctx->enc_keylen = keylen;
	FUNC3(ctx->enc_key, key, keylen);
	return 0;
fallback:
	ret = FUNC1(ctx->fallback, key, keylen);
	if (!ret)
		ctx->enc_keylen = keylen;
	return ret;
}