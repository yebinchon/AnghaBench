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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_hash_request_ctx {scalar_t__ dma_ct; int /*<<< orphan*/  sg_key; } ;
struct stm32_hash_dev {int dma_mode; int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;
struct stm32_hash_ctx {scalar_t__ keylen; int /*<<< orphan*/  key; } ;
struct crypto_ahash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 scalar_t__ HASH_DMA_THRESHOLD ; 
 int HASH_FLAGS_HMAC_KEY ; 
 struct stm32_hash_request_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 struct stm32_hash_ctx* FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct stm32_hash_dev*) ; 
 int FUNC9 (struct stm32_hash_dev*) ; 
 int FUNC10 (struct stm32_hash_dev*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct stm32_hash_dev *hdev)
{
	struct stm32_hash_request_ctx *rctx = FUNC1(hdev->req);
	struct crypto_ahash *tfm = FUNC3(hdev->req);
	struct stm32_hash_ctx *ctx = FUNC2(tfm);
	int err;

	if (ctx->keylen < HASH_DMA_THRESHOLD || (hdev->dma_mode == 1)) {
		err = FUNC9(hdev);
		if (FUNC8(hdev))
			return -ETIMEDOUT;
	} else {
		if (!(hdev->flags & HASH_FLAGS_HMAC_KEY))
			FUNC7(&rctx->sg_key, ctx->key,
				    FUNC0(ctx->keylen, sizeof(u32)));

		rctx->dma_ct = FUNC5(hdev->dev, &rctx->sg_key, 1,
					  DMA_TO_DEVICE);
		if (rctx->dma_ct == 0) {
			FUNC4(hdev->dev, "dma_map_sg error\n");
			return -ENOMEM;
		}

		err = FUNC10(hdev, &rctx->sg_key, ctx->keylen, 0);

		FUNC6(hdev->dev, &rctx->sg_key, 1, DMA_TO_DEVICE);
	}

	return err;
}