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
typedef  int /*<<< orphan*/  u8 ;
struct talitos_ctx {int keylen; int /*<<< orphan*/  key; int /*<<< orphan*/  dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct talitos_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_ablkcipher *cipher,
			     const u8 *key, unsigned int keylen)
{
	struct talitos_ctx *ctx = FUNC0(cipher);
	struct device *dev = ctx->dev;

	if (ctx->keylen)
		FUNC2(dev, ctx->dma_key, ctx->keylen, DMA_TO_DEVICE);

	FUNC3(&ctx->key, key, keylen);
	ctx->keylen = keylen;

	ctx->dma_key = FUNC1(dev, ctx->key, keylen, DMA_TO_DEVICE);

	return 0;
}