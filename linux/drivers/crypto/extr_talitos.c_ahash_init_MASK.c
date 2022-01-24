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
struct talitos_ctx {struct device* dev; } ;
struct talitos_ahash_req_ctx {int first; unsigned int hw_context_size; int /*<<< orphan*/  hw_context; scalar_t__ swinit; scalar_t__ nbuf; scalar_t__ buf_idx; } ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ SHA256_DIGEST_SIZE ; 
 unsigned int TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256 ; 
 unsigned int TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512 ; 
 struct talitos_ahash_req_ctx* FUNC0 (struct ahash_request*) ; 
 struct talitos_ctx* FUNC1 (struct crypto_ahash*) ; 
 scalar_t__ FUNC2 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *areq)
{
	struct crypto_ahash *tfm = FUNC3(areq);
	struct talitos_ctx *ctx = FUNC1(tfm);
	struct device *dev = ctx->dev;
	struct talitos_ahash_req_ctx *req_ctx = FUNC0(areq);
	unsigned int size;
	dma_addr_t dma;

	/* Initialize the context */
	req_ctx->buf_idx = 0;
	req_ctx->nbuf = 0;
	req_ctx->first = 1; /* first indicates h/w must init its context */
	req_ctx->swinit = 0; /* assume h/w init of context */
	size =	(FUNC2(tfm) <= SHA256_DIGEST_SIZE)
			? TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256
			: TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512;
	req_ctx->hw_context_size = size;

	dma = FUNC4(dev, req_ctx->hw_context, req_ctx->hw_context_size,
			     DMA_TO_DEVICE);
	FUNC5(dev, dma, req_ctx->hw_context_size, DMA_TO_DEVICE);

	return 0;
}