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
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {unsigned int keylen; } ;
struct cc_hash_ctx {int is_hmac; TYPE_1__ key_params; int /*<<< orphan*/  opad_tmp_keys_dma_addr; scalar_t__ opad_tmp_keys_buff; int /*<<< orphan*/  drvdata; } ;

/* Variables and functions */
#define  AES_KEYSIZE_128 130 
#define  AES_KEYSIZE_192 129 
#define  AES_KEYSIZE_256 128 
 scalar_t__ CC_AES_KEY_SIZE_MAX ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 struct cc_hash_ctx* FUNC0 (struct crypto_ahash*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct crypto_ahash *ahash,
			  const u8 *key, unsigned int keylen)
{
	struct cc_hash_ctx *ctx = FUNC0(ahash);
	struct device *dev = FUNC4(ctx->drvdata);

	FUNC1(dev, "===== setkey (%d) ====\n", keylen);

	ctx->is_hmac = true;

	switch (keylen) {
	case AES_KEYSIZE_128:
	case AES_KEYSIZE_192:
	case AES_KEYSIZE_256:
		break;
	default:
		return -EINVAL;
	}

	ctx->key_params.keylen = keylen;

	/* STAT_PHASE_1: Copy key to ctx */

	FUNC2(dev, ctx->opad_tmp_keys_dma_addr,
				keylen, DMA_TO_DEVICE);

	FUNC5(ctx->opad_tmp_keys_buff, key, keylen);
	if (keylen == 24) {
		FUNC6(ctx->opad_tmp_keys_buff + 24, 0,
		       CC_AES_KEY_SIZE_MAX - 24);
	}

	FUNC3(dev, ctx->opad_tmp_keys_dma_addr,
				   keylen, DMA_TO_DEVICE);

	ctx->key_params.keylen = keylen;

	return 0;
}