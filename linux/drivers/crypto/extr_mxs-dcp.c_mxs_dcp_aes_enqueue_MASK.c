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
struct dcp_async_ctx {scalar_t__ key_len; size_t chan; } ;
struct dcp_aes_req_ctx {int enc; int ecb; } ;
struct dcp {int /*<<< orphan*/ * thread; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * queue; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {struct crypto_async_request base; } ;

/* Variables and functions */
 scalar_t__ AES_KEYSIZE_128 ; 
 size_t DCP_CHAN_CRYPTO ; 
 struct dcp_aes_req_ctx* FUNC0 (struct ablkcipher_request*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct crypto_async_request*) ; 
 struct dcp_async_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 struct dcp* global_sdcp ; 
 int FUNC3 (struct ablkcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ablkcipher_request *req, int enc, int ecb)
{
	struct dcp *sdcp = global_sdcp;
	struct crypto_async_request *arq = &req->base;
	struct dcp_async_ctx *actx = FUNC2(arq->tfm);
	struct dcp_aes_req_ctx *rctx = FUNC0(req);
	int ret;

	if (FUNC6(actx->key_len != AES_KEYSIZE_128))
		return FUNC3(req, enc);

	rctx->enc = enc;
	rctx->ecb = ecb;
	actx->chan = DCP_CHAN_CRYPTO;

	FUNC4(&sdcp->lock[actx->chan]);
	ret = FUNC1(&sdcp->queue[actx->chan], &req->base);
	FUNC5(&sdcp->lock[actx->chan]);

	FUNC7(sdcp->thread[actx->chan]);

	return ret;
}