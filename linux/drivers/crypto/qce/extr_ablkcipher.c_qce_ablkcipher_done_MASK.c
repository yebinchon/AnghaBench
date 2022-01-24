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
typedef  int u32 ;
struct qce_device {int /*<<< orphan*/  (* async_req_done ) (struct qce_device*,int) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  dma; } ;
struct qce_cipher_reqctx {int /*<<< orphan*/  dst_tbl; int /*<<< orphan*/  dst_nents; int /*<<< orphan*/  dst_sg; int /*<<< orphan*/  src_nents; int /*<<< orphan*/  src_sg; } ;
struct qce_alg_template {struct qce_device* qce; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct ablkcipher_request {scalar_t__ src; scalar_t__ dst; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_BIDIRECTIONAL ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 struct ablkcipher_request* FUNC0 (struct crypto_async_request*) ; 
 struct qce_cipher_reqctx* FUNC1 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qce_device*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qce_device*,int) ; 
 struct qce_alg_template* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void *data)
{
	struct crypto_async_request *async_req = data;
	struct ablkcipher_request *req = FUNC0(async_req);
	struct qce_cipher_reqctx *rctx = FUNC1(req);
	struct qce_alg_template *tmpl = FUNC8(async_req->tfm);
	struct qce_device *qce = tmpl->qce;
	enum dma_data_direction dir_src, dir_dst;
	u32 status;
	int error;
	bool diff_dst;

	diff_dst = (req->src != req->dst) ? true : false;
	dir_src = diff_dst ? DMA_TO_DEVICE : DMA_BIDIRECTIONAL;
	dir_dst = diff_dst ? DMA_FROM_DEVICE : DMA_BIDIRECTIONAL;

	error = FUNC5(&qce->dma);
	if (error)
		FUNC2(qce->dev, "ablkcipher dma termination error (%d)\n",
			error);

	if (diff_dst)
		FUNC3(qce->dev, rctx->src_sg, rctx->src_nents, dir_src);
	FUNC3(qce->dev, rctx->dst_sg, rctx->dst_nents, dir_dst);

	FUNC6(&rctx->dst_tbl);

	error = FUNC4(qce, &status);
	if (error < 0)
		FUNC2(qce->dev, "ablkcipher operation error (%x)\n", status);

	qce->async_req_done(tmpl->qce, error);
}