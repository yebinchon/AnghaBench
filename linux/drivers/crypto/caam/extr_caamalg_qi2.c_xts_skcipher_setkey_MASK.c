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
struct caam_flc {void** flc; int /*<<< orphan*/ * sh_desc; } ;
struct TYPE_3__ {unsigned int keylen; int key_inline; int /*<<< orphan*/  const* key_virt; } ;
struct caam_ctx {int /*<<< orphan*/  dir; int /*<<< orphan*/ * flc_dma; TYPE_1__ cdata; struct caam_flc* flc; struct device* dev; } ;

/* Variables and functions */
 int AES_MAX_KEY_SIZE ; 
 int AES_MIN_KEY_SIZE ; 
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 size_t DECRYPT ; 
 int EINVAL ; 
 size_t ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct caam_ctx* FUNC3 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct crypto_skcipher *skcipher, const u8 *key,
			       unsigned int keylen)
{
	struct caam_ctx *ctx = FUNC3(skcipher);
	struct device *dev = ctx->dev;
	struct caam_flc *flc;
	u32 *desc;

	if (keylen != 2 * AES_MIN_KEY_SIZE  && keylen != 2 * AES_MAX_KEY_SIZE) {
		FUNC7(dev, "key size mismatch\n");
		FUNC4(skcipher, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	ctx->cdata.keylen = keylen;
	ctx->cdata.key_virt = key;
	ctx->cdata.key_inline = true;

	/* xts_skcipher_encrypt shared descriptor */
	flc = &ctx->flc[ENCRYPT];
	desc = flc->sh_desc;
	FUNC1(desc, &ctx->cdata);
	flc->flc[1] = FUNC2(FUNC6(desc)); /* SDL */
	FUNC8(dev, ctx->flc_dma[ENCRYPT],
				   sizeof(flc->flc) + FUNC5(desc),
				   ctx->dir);

	/* xts_skcipher_decrypt shared descriptor */
	flc = &ctx->flc[DECRYPT];
	desc = flc->sh_desc;
	FUNC0(desc, &ctx->cdata);
	flc->flc[1] = FUNC2(FUNC6(desc)); /* SDL */
	FUNC8(dev, ctx->flc_dma[DECRYPT],
				   sizeof(flc->flc) + FUNC5(desc),
				   ctx->dir);

	return 0;
}