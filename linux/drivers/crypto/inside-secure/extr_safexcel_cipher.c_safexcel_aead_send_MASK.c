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
struct safexcel_crypto_priv {int flags; } ;
struct safexcel_cipher_req {int rdescs; scalar_t__ needs_inv; } ;
struct safexcel_cipher_ctx {struct safexcel_crypto_priv* priv; } ;
struct crypto_async_request {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;
struct aead_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  assoclen; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIP197_TRC_CACHE ; 
 struct aead_request* FUNC1 (struct crypto_async_request*) ; 
 struct safexcel_cipher_req* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 struct safexcel_cipher_ctx* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct crypto_async_request*,int,int*,int*) ; 
 int FUNC7 (struct crypto_async_request*,int,struct safexcel_cipher_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static int FUNC8(struct crypto_async_request *async, int ring,
			      int *commands, int *results)
{
	struct aead_request *req = FUNC1(async);
	struct crypto_aead *tfm = FUNC4(req);
	struct safexcel_cipher_ctx *ctx = FUNC5(req->base.tfm);
	struct safexcel_cipher_req *sreq = FUNC2(req);
	struct safexcel_crypto_priv *priv = ctx->priv;
	int ret;

	FUNC0(!(priv->flags & EIP197_TRC_CACHE) && sreq->needs_inv);

	if (sreq->needs_inv)
		ret = FUNC6(async, ring, commands, results);
	else
		ret = FUNC7(async, ring, sreq, req->src, req->dst,
					req->cryptlen, req->assoclen,
					FUNC3(tfm), req->iv,
					commands, results);
	sreq->rdescs = *results;
	return ret;
}