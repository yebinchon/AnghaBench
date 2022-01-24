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
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct skcipher_request {int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  iv; TYPE_1__ base; } ;
struct safexcel_crypto_priv {int flags; } ;
struct safexcel_cipher_req {int rdescs; scalar_t__ needs_inv; } ;
struct safexcel_cipher_ctx {struct safexcel_crypto_priv* priv; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_async_request {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIP197_TRC_CACHE ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 struct safexcel_cipher_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct crypto_async_request*,int,int*,int*) ; 
 int FUNC6 (struct crypto_async_request*,int,struct safexcel_cipher_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 struct skcipher_request* FUNC7 (struct crypto_async_request*) ; 
 struct safexcel_cipher_req* FUNC8 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC9(struct crypto_async_request *async, int ring,
				  int *commands, int *results)
{
	struct skcipher_request *req = FUNC7(async);
	struct safexcel_cipher_ctx *ctx = FUNC3(req->base.tfm);
	struct safexcel_cipher_req *sreq = FUNC8(req);
	struct safexcel_crypto_priv *priv = ctx->priv;
	int ret;

	FUNC0(!(priv->flags & EIP197_TRC_CACHE) && sreq->needs_inv);

	if (sreq->needs_inv) {
		ret = FUNC5(async, ring, commands, results);
	} else {
		struct crypto_skcipher *skcipher = FUNC2(req);
		u8 input_iv[AES_BLOCK_SIZE];

		/*
		 * Save input IV in case of CBC decrypt mode
		 * Will be overwritten with output IV prior to use!
		 */
		FUNC4(input_iv, req->iv, FUNC1(skcipher));

		ret = FUNC6(async, ring, sreq, req->src,
					req->dst, req->cryptlen, 0, 0, input_iv,
					commands, results);
	}

	sreq->rdescs = *results;
	return ret;
}