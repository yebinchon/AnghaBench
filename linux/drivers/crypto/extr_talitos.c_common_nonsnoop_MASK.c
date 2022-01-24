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
struct talitos_private {int dummy; } ;
struct talitos_desc {int /*<<< orphan*/ * ptr; } ;
struct talitos_edesc {int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma_link_tbl; scalar_t__ src_nents; scalar_t__ dst_nents; int /*<<< orphan*/  buf; int /*<<< orphan*/  iv_dma; struct talitos_desc desc; } ;
struct talitos_ctx {unsigned int keylen; int /*<<< orphan*/  ch; int /*<<< orphan*/  iv; int /*<<< orphan*/  dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {unsigned int nbytes; scalar_t__ src; scalar_t__ dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct talitos_edesc*,struct ablkcipher_request*) ; 
 struct talitos_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 unsigned int FUNC2 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC3 (struct ablkcipher_request*) ; 
 struct talitos_private* FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct talitos_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct talitos_edesc*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC11 (struct device*,scalar_t__,unsigned int,struct talitos_edesc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ ,struct talitos_desc*,void (*) (struct device*,struct talitos_desc*,void*,int),struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC14(struct talitos_edesc *edesc,
			   struct ablkcipher_request *areq,
			   void (*callback) (struct device *dev,
					     struct talitos_desc *desc,
					     void *context, int error))
{
	struct crypto_ablkcipher *cipher = FUNC3(areq);
	struct talitos_ctx *ctx = FUNC1(cipher);
	struct device *dev = ctx->dev;
	struct talitos_desc *desc = &edesc->desc;
	unsigned int cryptlen = areq->nbytes;
	unsigned int ivsize = FUNC2(cipher);
	int sg_count, ret;
	bool sync_needed = false;
	struct talitos_private *priv = FUNC4(dev);
	bool is_sec1 = FUNC7(priv);

	/* first DWORD empty */

	/* cipher iv */
	FUNC13(&desc->ptr[1], edesc->iv_dma, ivsize, is_sec1);

	/* cipher key */
	FUNC13(&desc->ptr[2], ctx->dma_key, ctx->keylen, is_sec1);

	sg_count = edesc->src_nents ?: 1;
	if (is_sec1 && sg_count > 1)
		FUNC10(areq->src, sg_count, edesc->buf,
				  cryptlen);
	else
		sg_count = FUNC5(dev, areq->src, sg_count,
				      (areq->src == areq->dst) ?
				      DMA_BIDIRECTIONAL : DMA_TO_DEVICE);
	/*
	 * cipher in
	 */
	sg_count = FUNC11(dev, areq->src, cryptlen, edesc,
				  &desc->ptr[3], sg_count, 0, 0);
	if (sg_count > 1)
		sync_needed = true;

	/* cipher out */
	if (areq->src != areq->dst) {
		sg_count = edesc->dst_nents ? : 1;
		if (!is_sec1 || sg_count == 1)
			FUNC5(dev, areq->dst, sg_count, DMA_FROM_DEVICE);
	}

	ret = FUNC11(dev, areq->dst, cryptlen, edesc, &desc->ptr[4],
			     sg_count, 0, (edesc->src_nents + 1));
	if (ret > 1)
		sync_needed = true;

	/* iv out */
	FUNC9(dev, &desc->ptr[5], ivsize, ctx->iv,
			       DMA_FROM_DEVICE);

	/* last DWORD empty */

	if (sync_needed)
		FUNC6(dev, edesc->dma_link_tbl,
					   edesc->dma_len, DMA_BIDIRECTIONAL);

	ret = FUNC12(dev, ctx->ch, desc, callback, areq);
	if (ret != -EINPROGRESS) {
		FUNC0(dev, edesc, areq);
		FUNC8(edesc);
	}
	return ret;
}