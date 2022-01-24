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
struct device {int dummy; } ;
struct crypto_aead {int /*<<< orphan*/  base; } ;
struct cc_xcbc_s {int /*<<< orphan*/ * xcbc_keys; scalar_t__ xcbc_keys_dma_addr; } ;
struct cc_hmac_s {int /*<<< orphan*/ * padded_authkey; scalar_t__ padded_authkey_dma_addr; int /*<<< orphan*/ * ipad_opad; scalar_t__ ipad_opad_dma_addr; } ;
struct TYPE_2__ {struct cc_hmac_s hmac; struct cc_xcbc_s xcbc; } ;
struct cc_aead_ctx {scalar_t__ auth_mode; TYPE_1__ auth_state; int /*<<< orphan*/ * enckey; scalar_t__ enckey_dma_addr; int /*<<< orphan*/  drvdata; } ;

/* Variables and functions */
 int AES_MAX_KEY_SIZE ; 
 int CC_AES_128_BIT_KEY_SIZE ; 
 scalar_t__ DRV_HASH_NULL ; 
 scalar_t__ DRV_HASH_XCBC_MAC ; 
 int MAX_HMAC_BLOCK_SIZE ; 
 int MAX_HMAC_DIGEST_SIZE ; 
 struct cc_aead_ctx* FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,struct cc_aead_ctx*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct crypto_aead *tfm)
{
	struct cc_aead_ctx *ctx = FUNC0(tfm);
	struct device *dev = FUNC4(ctx->drvdata);

	FUNC2(dev, "Clearing context @%p for %s\n", FUNC0(tfm),
		FUNC1(&tfm->base));

	/* Unmap enckey buffer */
	if (ctx->enckey) {
		FUNC3(dev, AES_MAX_KEY_SIZE, ctx->enckey,
				  ctx->enckey_dma_addr);
		FUNC2(dev, "Freed enckey DMA buffer enckey_dma_addr=%pad\n",
			&ctx->enckey_dma_addr);
		ctx->enckey_dma_addr = 0;
		ctx->enckey = NULL;
	}

	if (ctx->auth_mode == DRV_HASH_XCBC_MAC) { /* XCBC authetication */
		struct cc_xcbc_s *xcbc = &ctx->auth_state.xcbc;

		if (xcbc->xcbc_keys) {
			FUNC3(dev, CC_AES_128_BIT_KEY_SIZE * 3,
					  xcbc->xcbc_keys,
					  xcbc->xcbc_keys_dma_addr);
		}
		FUNC2(dev, "Freed xcbc_keys DMA buffer xcbc_keys_dma_addr=%pad\n",
			&xcbc->xcbc_keys_dma_addr);
		xcbc->xcbc_keys_dma_addr = 0;
		xcbc->xcbc_keys = NULL;
	} else if (ctx->auth_mode != DRV_HASH_NULL) { /* HMAC auth. */
		struct cc_hmac_s *hmac = &ctx->auth_state.hmac;

		if (hmac->ipad_opad) {
			FUNC3(dev, 2 * MAX_HMAC_DIGEST_SIZE,
					  hmac->ipad_opad,
					  hmac->ipad_opad_dma_addr);
			FUNC2(dev, "Freed ipad_opad DMA buffer ipad_opad_dma_addr=%pad\n",
				&hmac->ipad_opad_dma_addr);
			hmac->ipad_opad_dma_addr = 0;
			hmac->ipad_opad = NULL;
		}
		if (hmac->padded_authkey) {
			FUNC3(dev, MAX_HMAC_BLOCK_SIZE,
					  hmac->padded_authkey,
					  hmac->padded_authkey_dma_addr);
			FUNC2(dev, "Freed padded_authkey DMA buffer padded_authkey_dma_addr=%pad\n",
				&hmac->padded_authkey_dma_addr);
			hmac->padded_authkey_dma_addr = 0;
			hmac->padded_authkey = NULL;
		}
	}
}