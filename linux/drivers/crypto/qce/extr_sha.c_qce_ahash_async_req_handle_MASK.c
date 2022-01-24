#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qce_sha_reqctx {unsigned long flags; int src_nents; int /*<<< orphan*/  result_sg; int /*<<< orphan*/  authklen; int /*<<< orphan*/  authkey; } ;
struct qce_sha_ctx {int /*<<< orphan*/  authkey; } ;
struct TYPE_4__ {int /*<<< orphan*/  result_buf; } ;
struct qce_device {int /*<<< orphan*/  dev; TYPE_1__ dma; } ;
struct qce_alg_template {int /*<<< orphan*/  crypto_alg_type; struct qce_device* qce; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct ahash_request {int /*<<< orphan*/ * src; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_KEYSIZE_128 ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  QCE_RESULT_BUF_SZ ; 
 int /*<<< orphan*/  QCE_SHA_HMAC_KEY_SIZE ; 
 struct ahash_request* FUNC2 (struct crypto_async_request*) ; 
 struct qce_sha_reqctx* FUNC3 (struct ahash_request*) ; 
 struct qce_sha_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qce_ahash_done ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct crypto_async_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qce_alg_template* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct crypto_async_request *async_req)
{
	struct ahash_request *req = FUNC2(async_req);
	struct qce_sha_reqctx *rctx = FUNC3(req);
	struct qce_sha_ctx *ctx = FUNC4(async_req->tfm);
	struct qce_alg_template *tmpl = FUNC14(async_req->tfm);
	struct qce_device *qce = tmpl->qce;
	unsigned long flags = rctx->flags;
	int ret;

	if (FUNC1(flags)) {
		rctx->authkey = ctx->authkey;
		rctx->authklen = QCE_SHA_HMAC_KEY_SIZE;
	} else if (FUNC0(flags)) {
		rctx->authkey = ctx->authkey;
		rctx->authklen = AES_KEYSIZE_128;
	}

	rctx->src_nents = FUNC13(req->src, req->nbytes);
	if (rctx->src_nents < 0) {
		FUNC5(qce->dev, "Invalid numbers of src SG.\n");
		return rctx->src_nents;
	}

	ret = FUNC6(qce->dev, req->src, rctx->src_nents, DMA_TO_DEVICE);
	if (ret < 0)
		return ret;

	FUNC12(&rctx->result_sg, qce->dma.result_buf, QCE_RESULT_BUF_SZ);

	ret = FUNC6(qce->dev, &rctx->result_sg, 1, DMA_FROM_DEVICE);
	if (ret < 0)
		goto error_unmap_src;

	ret = FUNC9(&qce->dma, req->src, rctx->src_nents,
			       &rctx->result_sg, 1, qce_ahash_done, async_req);
	if (ret)
		goto error_unmap_dst;

	FUNC8(&qce->dma);

	ret = FUNC11(async_req, tmpl->crypto_alg_type, 0, 0);
	if (ret)
		goto error_terminate;

	return 0;

error_terminate:
	FUNC10(&qce->dma);
error_unmap_dst:
	FUNC7(qce->dev, &rctx->result_sg, 1, DMA_FROM_DEVICE);
error_unmap_src:
	FUNC7(qce->dev, req->src, rctx->src_nents, DMA_TO_DEVICE);
	return ret;
}