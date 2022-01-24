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
struct TYPE_2__ {int /*<<< orphan*/  aes; } ;
struct n2_cipher_context {int enc_type; unsigned int key_len; TYPE_1__ key; } ;
struct n2_cipher_alg {int enc_type; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
#define  AES_KEYSIZE_128 130 
#define  AES_KEYSIZE_192 129 
#define  AES_KEYSIZE_256 128 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int ENC_TYPE_ALG_AES128 ; 
 int ENC_TYPE_ALG_AES192 ; 
 int ENC_TYPE_ALG_AES256 ; 
 int ENC_TYPE_CHAINING_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_ablkcipher*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (struct crypto_ablkcipher*) ; 
 struct n2_cipher_context* FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct n2_cipher_alg* FUNC4 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC5(struct crypto_ablkcipher *cipher, const u8 *key,
			 unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC1(cipher);
	struct n2_cipher_context *ctx = FUNC2(tfm);
	struct n2_cipher_alg *n2alg = FUNC4(tfm);

	ctx->enc_type = (n2alg->enc_type & ENC_TYPE_CHAINING_MASK);

	switch (keylen) {
	case AES_KEYSIZE_128:
		ctx->enc_type |= ENC_TYPE_ALG_AES128;
		break;
	case AES_KEYSIZE_192:
		ctx->enc_type |= ENC_TYPE_ALG_AES192;
		break;
	case AES_KEYSIZE_256:
		ctx->enc_type |= ENC_TYPE_ALG_AES256;
		break;
	default:
		FUNC0(cipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	ctx->key_len = keylen;
	FUNC3(ctx->key.aes, key, keylen);
	return 0;
}