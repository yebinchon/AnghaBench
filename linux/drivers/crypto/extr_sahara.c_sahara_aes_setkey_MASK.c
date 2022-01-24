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
struct sahara_ctx {unsigned int keylen; int /*<<< orphan*/  fallback; int /*<<< orphan*/  flags; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;

/* Variables and functions */
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_192 ; 
 unsigned int AES_KEYSIZE_256 ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int CRYPTO_TFM_RES_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FLAGS_NEW_KEY ; 
 struct sahara_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_ablkcipher *tfm, const u8 *key,
			     unsigned int keylen)
{
	struct sahara_ctx *ctx = FUNC0(tfm);
	int ret;

	ctx->keylen = keylen;

	/* SAHARA only supports 128bit keys */
	if (keylen == AES_KEYSIZE_128) {
		FUNC5(ctx->key, key, keylen);
		ctx->flags |= FLAGS_NEW_KEY;
		return 0;
	}

	if (keylen != AES_KEYSIZE_192 && keylen != AES_KEYSIZE_256)
		return -EINVAL;

	/*
	 * The requested key size is not supported by HW, do a fallback.
	 */
	FUNC1(ctx->fallback, CRYPTO_TFM_REQ_MASK);
	FUNC3(ctx->fallback, tfm->base.crt_flags &
						 CRYPTO_TFM_REQ_MASK);

	ret = FUNC4(ctx->fallback, key, keylen);

	tfm->base.crt_flags &= ~CRYPTO_TFM_RES_MASK;
	tfm->base.crt_flags |= FUNC2(ctx->fallback) &
			       CRYPTO_TFM_RES_MASK;
	return ret;
}