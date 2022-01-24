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
struct virtio_crypto_ablkcipher_ctx {struct virtio_crypto* vcrypto; } ;
struct virtio_crypto {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  VIRTIO_CRYPTO_SERVICE_CIPHER ; 
 struct virtio_crypto_ablkcipher_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_crypto*) ; 
 struct virtio_crypto* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_crypto_ablkcipher_ctx*,int) ; 
 int FUNC5 (struct virtio_crypto_ablkcipher_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC6 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct crypto_ablkcipher *tfm,
					 const uint8_t *key,
					 unsigned int keylen)
{
	struct virtio_crypto_ablkcipher_ctx *ctx = FUNC0(tfm);
	uint32_t alg;
	int ret;

	ret = FUNC6(keylen, &alg);
	if (ret)
		return ret;

	if (!ctx->vcrypto) {
		/* New key */
		int node = FUNC7();
		struct virtio_crypto *vcrypto =
				      FUNC3(node,
				      VIRTIO_CRYPTO_SERVICE_CIPHER, alg);
		if (!vcrypto) {
			FUNC1("virtio_crypto: Could not find a virtio device in the system or unsupported algo\n");
			return -ENODEV;
		}

		ctx->vcrypto = vcrypto;
	} else {
		/* Rekeying, we should close the created sessions previously */
		FUNC4(ctx, 1);
		FUNC4(ctx, 0);
	}

	ret = FUNC5(ctx, key, keylen);
	if (ret) {
		FUNC2(ctx->vcrypto);
		ctx->vcrypto = NULL;

		return ret;
	}

	return 0;
}