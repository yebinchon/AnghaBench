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
struct omap_aes_ctx {unsigned int keylen; int /*<<< orphan*/  fallback; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;

/* Variables and functions */
 unsigned int AES_KEYSIZE_128 ; 
 unsigned int AES_KEYSIZE_192 ; 
 unsigned int AES_KEYSIZE_256 ; 
 int CRYPTO_TFM_REQ_MASK ; 
 int EINVAL ; 
 struct omap_aes_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_ablkcipher *tfm, const u8 *key,
			   unsigned int keylen)
{
	struct omap_aes_ctx *ctx = FUNC0(tfm);
	int ret;

	if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
		   keylen != AES_KEYSIZE_256)
		return -EINVAL;

	FUNC5("enter, keylen: %d\n", keylen);

	FUNC4(ctx->key, key, keylen);
	ctx->keylen = keylen;

	FUNC1(ctx->fallback, CRYPTO_TFM_REQ_MASK);
	FUNC2(ctx->fallback, tfm->base.crt_flags &
						 CRYPTO_TFM_REQ_MASK);

	ret = FUNC3(ctx->fallback, key, keylen);
	if (!ret)
		return 0;

	return 0;
}