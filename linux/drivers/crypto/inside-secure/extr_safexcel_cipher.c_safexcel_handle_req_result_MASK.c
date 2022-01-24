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
struct skcipher_request {int /*<<< orphan*/  iv; } ;
struct scatterlist {int dummy; } ;
struct safexcel_result_desc {int dummy; } ;
struct safexcel_crypto_priv {int /*<<< orphan*/  dev; TYPE_1__* ring; } ;
struct safexcel_cipher_req {scalar_t__ direction; int /*<<< orphan*/  nr_dst; int /*<<< orphan*/  nr_src; int /*<<< orphan*/  rdescs; } ;
struct safexcel_cipher_ctx {scalar_t__ mode; int /*<<< orphan*/  aead; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_async_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdr; } ;

/* Variables and functions */
 scalar_t__ CONTEXT_CONTROL_CRYPTO_MODE_CBC ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (struct safexcel_result_desc*) ; 
 int FUNC1 (struct safexcel_result_desc*) ; 
 scalar_t__ SAFEXCEL_ENCRYPT ; 
 struct safexcel_cipher_ctx* FUNC2 (struct crypto_skcipher*) ; 
 scalar_t__ FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct safexcel_crypto_priv*,int) ; 
 int FUNC9 (struct safexcel_crypto_priv*,struct safexcel_result_desc*) ; 
 struct safexcel_result_desc* FUNC10 (struct safexcel_crypto_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct skcipher_request* FUNC12 (struct crypto_async_request*) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct safexcel_crypto_priv *priv, int ring,
				      struct crypto_async_request *async,
				      struct scatterlist *src,
				      struct scatterlist *dst,
				      unsigned int cryptlen,
				      struct safexcel_cipher_req *sreq,
				      bool *should_complete, int *ret)
{
	struct skcipher_request *areq = FUNC12(async);
	struct crypto_skcipher *skcipher = FUNC4(areq);
	struct safexcel_cipher_ctx *ctx = FUNC2(skcipher);
	struct safexcel_result_desc *rdesc;
	int ndesc = 0;

	*ret = 0;

	if (FUNC13(!sreq->rdescs))
		return 0;

	while (sreq->rdescs--) {
		rdesc = FUNC10(priv, &priv->ring[ring].rdr);
		if (FUNC0(rdesc)) {
			FUNC5(priv->dev,
				"cipher: result: could not retrieve the result descriptor\n");
			*ret = FUNC1(rdesc);
			break;
		}

		if (FUNC7(!*ret))
			*ret = FUNC9(priv, rdesc);

		ndesc++;
	}

	FUNC8(priv, ring);

	if (src == dst) {
		FUNC6(priv->dev, src, sreq->nr_src, DMA_BIDIRECTIONAL);
	} else {
		FUNC6(priv->dev, src, sreq->nr_src, DMA_TO_DEVICE);
		FUNC6(priv->dev, dst, sreq->nr_dst, DMA_FROM_DEVICE);
	}

	/*
	 * Update IV in req from last crypto output word for CBC modes
	 */
	if ((!ctx->aead) && (ctx->mode == CONTEXT_CONTROL_CRYPTO_MODE_CBC) &&
	    (sreq->direction == SAFEXCEL_ENCRYPT)) {
		/* For encrypt take the last output word */
		FUNC11(dst, sreq->nr_dst, areq->iv,
				   FUNC3(skcipher),
				   (cryptlen -
				    FUNC3(skcipher)));
	}

	*should_complete = true;

	return ndesc;
}