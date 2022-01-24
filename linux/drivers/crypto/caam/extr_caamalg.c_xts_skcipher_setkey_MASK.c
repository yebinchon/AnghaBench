#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {unsigned int keylen; int key_inline; int /*<<< orphan*/  const* key_virt; } ;
struct caam_ctx {int /*<<< orphan*/  dir; int /*<<< orphan*/  sh_desc_dec_dma; TYPE_1__ cdata; int /*<<< orphan*/ * sh_desc_dec; int /*<<< orphan*/  sh_desc_enc_dma; int /*<<< orphan*/ * sh_desc_enc; struct device* jrdev; } ;

/* Variables and functions */
 int AES_MAX_KEY_SIZE ; 
 int AES_MIN_KEY_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct caam_ctx* FUNC2 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct crypto_skcipher *skcipher, const u8 *key,
			       unsigned int keylen)
{
	struct caam_ctx *ctx = FUNC2(skcipher);
	struct device *jrdev = ctx->jrdev;
	u32 *desc;

	if (keylen != 2 * AES_MIN_KEY_SIZE  && keylen != 2 * AES_MAX_KEY_SIZE) {
		FUNC3(skcipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		FUNC5(jrdev, "key size mismatch\n");
		return -EINVAL;
	}

	ctx->cdata.keylen = keylen;
	ctx->cdata.key_virt = key;
	ctx->cdata.key_inline = true;

	/* xts_skcipher_encrypt shared descriptor */
	desc = ctx->sh_desc_enc;
	FUNC1(desc, &ctx->cdata);
	FUNC6(jrdev, ctx->sh_desc_enc_dma,
				   FUNC4(desc), ctx->dir);

	/* xts_skcipher_decrypt shared descriptor */
	desc = ctx->sh_desc_dec;
	FUNC0(desc, &ctx->cdata);
	FUNC6(jrdev, ctx->sh_desc_dec_dma,
				   FUNC4(desc), ctx->dir);

	return 0;
}