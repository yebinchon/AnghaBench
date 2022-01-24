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
struct talitos_export_state {unsigned int nbuf; int /*<<< orphan*/  to_hash_later; int /*<<< orphan*/  last; int /*<<< orphan*/  first; int /*<<< orphan*/  swinit; int /*<<< orphan*/  buf; int /*<<< orphan*/  hw_context; } ;
struct talitos_ctx {struct device* dev; } ;
struct talitos_ahash_req_ctx {unsigned int hw_context_size; unsigned int nbuf; int /*<<< orphan*/  hw_context; int /*<<< orphan*/  to_hash_later; int /*<<< orphan*/  last; int /*<<< orphan*/  first; int /*<<< orphan*/  swinit; int /*<<< orphan*/ * buf; } ;
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct talitos_ahash_req_ctx*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct ahash_request *areq, const void *in)
{
	struct talitos_ahash_req_ctx *req_ctx = FUNC0(areq);
	struct crypto_ahash *tfm = FUNC3(areq);
	struct talitos_ctx *ctx = FUNC1(tfm);
	struct device *dev = ctx->dev;
	const struct talitos_export_state *export = in;
	unsigned int size;
	dma_addr_t dma;

	FUNC7(req_ctx, 0, sizeof(*req_ctx));
	size = (FUNC2(tfm) <= SHA256_DIGEST_SIZE)
			? TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256
			: TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512;
	req_ctx->hw_context_size = size;
	FUNC6(req_ctx->hw_context, export->hw_context, size);
	FUNC6(req_ctx->buf[0], export->buf, export->nbuf);
	req_ctx->swinit = export->swinit;
	req_ctx->first = export->first;
	req_ctx->last = export->last;
	req_ctx->to_hash_later = export->to_hash_later;
	req_ctx->nbuf = export->nbuf;

	dma = FUNC4(dev, req_ctx->hw_context, req_ctx->hw_context_size,
			     DMA_TO_DEVICE);
	FUNC5(dev, dma, req_ctx->hw_context_size, DMA_TO_DEVICE);

	return 0;
}