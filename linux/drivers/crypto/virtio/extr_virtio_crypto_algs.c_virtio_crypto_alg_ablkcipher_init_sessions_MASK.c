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
typedef  int /*<<< orphan*/  uint32_t ;
struct virtio_crypto_ablkcipher_ctx {int /*<<< orphan*/  tfm; struct virtio_crypto* vcrypto; } ;
struct virtio_crypto {unsigned int max_cipher_key_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_crypto_ablkcipher_ctx*,int) ; 
 int FUNC3 (struct virtio_crypto_ablkcipher_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int,int) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
		struct virtio_crypto_ablkcipher_ctx *ctx,
		const uint8_t *key, unsigned int keylen)
{
	uint32_t alg;
	int ret;
	struct virtio_crypto *vcrypto = ctx->vcrypto;

	if (keylen > vcrypto->max_cipher_key_len) {
		FUNC1("virtio_crypto: the key is too long\n");
		goto bad_key;
	}

	if (FUNC4(keylen, &alg))
		goto bad_key;

	/* Create encryption session */
	ret = FUNC3(ctx,
			alg, key, keylen, 1);
	if (ret)
		return ret;
	/* Create decryption session */
	ret = FUNC3(ctx,
			alg, key, keylen, 0);
	if (ret) {
		FUNC2(ctx, 1);
		return ret;
	}
	return 0;

bad_key:
	FUNC0(ctx->tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
	return -EINVAL;
}