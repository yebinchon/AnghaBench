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
typedef  int u32 ;
struct qce_sha_reqctx {int src_nents; int last_blk; int first_blk; int /*<<< orphan*/  nbytes_orig; int /*<<< orphan*/ * src_orig; void** byte_count; scalar_t__ digest; int /*<<< orphan*/  result_sg; } ;
struct qce_result_dump {int /*<<< orphan*/ * auth_byte_count; int /*<<< orphan*/  auth_iv; } ;
struct TYPE_2__ {struct qce_result_dump* result_buf; } ;
struct qce_device {int /*<<< orphan*/  (* async_req_done ) (struct qce_device*,int) ;int /*<<< orphan*/  dev; TYPE_1__ dma; } ;
struct qce_alg_template {struct qce_device* qce; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  nbytes; int /*<<< orphan*/ * src; scalar_t__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct ahash_request* FUNC0 (struct crypto_async_request*) ; 
 struct qce_sha_reqctx* FUNC1 (struct ahash_request*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct qce_device*,int*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct qce_device*,int) ; 
 struct qce_alg_template* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void *data)
{
	struct crypto_async_request *async_req = data;
	struct ahash_request *req = FUNC0(async_req);
	struct crypto_ahash *ahash = FUNC4(req);
	struct qce_sha_reqctx *rctx = FUNC1(req);
	struct qce_alg_template *tmpl = FUNC11(async_req->tfm);
	struct qce_device *qce = tmpl->qce;
	struct qce_result_dump *result = qce->dma.result_buf;
	unsigned int digestsize = FUNC3(ahash);
	int error;
	u32 status;

	error = FUNC9(&qce->dma);
	if (error)
		FUNC5(qce->dev, "ahash dma termination error (%d)\n", error);

	FUNC6(qce->dev, req->src, rctx->src_nents, DMA_TO_DEVICE);
	FUNC6(qce->dev, &rctx->result_sg, 1, DMA_FROM_DEVICE);

	FUNC7(rctx->digest, result->auth_iv, digestsize);
	if (req->result)
		FUNC7(req->result, result->auth_iv, digestsize);

	rctx->byte_count[0] = FUNC2(result->auth_byte_count[0]);
	rctx->byte_count[1] = FUNC2(result->auth_byte_count[1]);

	error = FUNC8(qce, &status);
	if (error < 0)
		FUNC5(qce->dev, "ahash operation error (%x)\n", status);

	req->src = rctx->src_orig;
	req->nbytes = rctx->nbytes_orig;
	rctx->last_blk = false;
	rctx->first_blk = false;

	qce->async_req_done(tmpl->qce, error);
}