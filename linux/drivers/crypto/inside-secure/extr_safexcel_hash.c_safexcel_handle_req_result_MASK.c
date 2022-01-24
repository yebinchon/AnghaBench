#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct safexcel_result_desc {int dummy; } ;
struct safexcel_crypto_priv {int /*<<< orphan*/  dev; TYPE_1__* ring; } ;
struct safexcel_ahash_req {scalar_t__ digest; int /*<<< orphan*/  cache_next; int /*<<< orphan*/  cache; int /*<<< orphan*/  state; scalar_t__ hmac; scalar_t__ block_sz; scalar_t__ processed; scalar_t__ len; scalar_t__ state_sz; scalar_t__ finish; scalar_t__ cache_sz; scalar_t__ cache_dma; scalar_t__ result_dma; scalar_t__ nents; } ;
struct TYPE_4__ {int needs_inv; } ;
struct safexcel_ahash_ctx {TYPE_2__ base; int /*<<< orphan*/  opad; } ;
struct crypto_async_request {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  result; scalar_t__ nbytes; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  rdr; } ;

/* Variables and functions */
 scalar_t__ CONTEXT_CONTROL_DIGEST_HMAC ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (struct safexcel_result_desc*) ; 
 int FUNC1 (struct safexcel_result_desc*) ; 
 struct ahash_request* FUNC2 (struct crypto_async_request*) ; 
 struct safexcel_ahash_req* FUNC3 (struct ahash_request*) ; 
 struct safexcel_ahash_ctx* FUNC4 (struct crypto_ahash*) ; 
 scalar_t__ FUNC5 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC6 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct safexcel_crypto_priv*,int) ; 
 scalar_t__ FUNC13 (struct safexcel_ahash_req*) ; 
 int FUNC14 (struct safexcel_crypto_priv*,struct safexcel_result_desc*) ; 
 struct safexcel_result_desc* FUNC15 (struct safexcel_crypto_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct safexcel_crypto_priv *priv,
				      int ring,
				      struct crypto_async_request *async,
				      bool *should_complete, int *ret)
{
	struct safexcel_result_desc *rdesc;
	struct ahash_request *areq = FUNC2(async);
	struct crypto_ahash *ahash = FUNC6(areq);
	struct safexcel_ahash_req *sreq = FUNC3(areq);
	struct safexcel_ahash_ctx *ctx = FUNC4(ahash);
	u64 cache_len;

	*ret = 0;

	rdesc = FUNC15(priv, &priv->ring[ring].rdr);
	if (FUNC0(rdesc)) {
		FUNC7(priv->dev,
			"hash: result: could not retrieve the result descriptor\n");
		*ret = FUNC1(rdesc);
	} else {
		*ret = FUNC14(priv, rdesc);
	}

	FUNC12(priv, ring);

	if (sreq->nents) {
		FUNC8(priv->dev, areq->src, sreq->nents, DMA_TO_DEVICE);
		sreq->nents = 0;
	}

	if (sreq->result_dma) {
		FUNC9(priv->dev, sreq->result_dma, sreq->state_sz,
				 DMA_FROM_DEVICE);
		sreq->result_dma = 0;
	}

	if (sreq->cache_dma) {
		FUNC9(priv->dev, sreq->cache_dma, sreq->cache_sz,
				 DMA_TO_DEVICE);
		sreq->cache_dma = 0;
		sreq->cache_sz = 0;
	}

	if (sreq->finish) {
		if (sreq->hmac &&
		    (sreq->digest != CONTEXT_CONTROL_DIGEST_HMAC)) {
			/* Faking HMAC using hash - need to do outer hash */
			FUNC10(sreq->cache, sreq->state,
			       FUNC5(ahash));

			FUNC10(sreq->state, ctx->opad, sreq->state_sz);

			sreq->len = sreq->block_sz +
				    FUNC5(ahash);
			sreq->processed = sreq->block_sz;
			sreq->hmac = 0;

			ctx->base.needs_inv = true;
			areq->nbytes = 0;
			FUNC11(areq);

			*should_complete = false; /* Not done yet */
			return 1;
		}

		FUNC10(areq->result, sreq->state,
		       FUNC5(ahash));
	}

	cache_len = FUNC13(sreq);
	if (cache_len)
		FUNC10(sreq->cache, sreq->cache_next, cache_len);

	*should_complete = true;

	return 1;
}