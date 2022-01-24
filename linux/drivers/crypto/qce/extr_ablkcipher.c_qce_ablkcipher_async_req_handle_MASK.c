#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  result_buf; } ;
struct qce_device {int /*<<< orphan*/  dev; TYPE_5__ dma; } ;
struct TYPE_9__ {scalar_t__ sgl; } ;
struct qce_cipher_reqctx {int src_nents; int dst_nents; scalar_t__ dst_sg; scalar_t__ src_sg; TYPE_2__ dst_tbl; int /*<<< orphan*/  result_sg; int /*<<< orphan*/  cryptlen; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  iv; } ;
struct qce_alg_template {int /*<<< orphan*/  crypto_alg_type; struct qce_device* qce; } ;
struct crypto_async_request {int /*<<< orphan*/  tfm; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct ablkcipher_request {scalar_t__ src; scalar_t__ dst; int /*<<< orphan*/  nbytes; TYPE_1__ base; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int DMA_BIDIRECTIONAL ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct scatterlist*) ; 
 int FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  QCE_RESULT_BUF_SZ ; 
 struct ablkcipher_request* FUNC2 (struct crypto_async_request*) ; 
 struct qce_cipher_reqctx* FUNC3 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC5 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  qce_ablkcipher_done ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_5__*,scalar_t__,int,scalar_t__,int,int /*<<< orphan*/ ,struct crypto_async_request*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 struct scatterlist* FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct crypto_async_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct scatterlist*) ; 
 void* FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct qce_alg_template* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct crypto_async_request *async_req)
{
	struct ablkcipher_request *req = FUNC2(async_req);
	struct qce_cipher_reqctx *rctx = FUNC3(req);
	struct crypto_ablkcipher *ablkcipher = FUNC5(req);
	struct qce_alg_template *tmpl = FUNC19(async_req->tfm);
	struct qce_device *qce = tmpl->qce;
	enum dma_data_direction dir_src, dir_dst;
	struct scatterlist *sg;
	bool diff_dst;
	gfp_t gfp;
	int ret;

	rctx->iv = req->info;
	rctx->ivsize = FUNC4(ablkcipher);
	rctx->cryptlen = req->nbytes;

	diff_dst = (req->src != req->dst) ? true : false;
	dir_src = diff_dst ? DMA_TO_DEVICE : DMA_BIDIRECTIONAL;
	dir_dst = diff_dst ? DMA_FROM_DEVICE : DMA_BIDIRECTIONAL;

	rctx->src_nents = FUNC18(req->src, req->nbytes);
	if (diff_dst)
		rctx->dst_nents = FUNC18(req->dst, req->nbytes);
	else
		rctx->dst_nents = rctx->src_nents;
	if (rctx->src_nents < 0) {
		FUNC6(qce->dev, "Invalid numbers of src SG.\n");
		return rctx->src_nents;
	}
	if (rctx->dst_nents < 0) {
		FUNC6(qce->dev, "Invalid numbers of dst SG.\n");
		return -rctx->dst_nents;
	}

	rctx->dst_nents += 1;

	gfp = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
						GFP_KERNEL : GFP_ATOMIC;

	ret = FUNC14(&rctx->dst_tbl, rctx->dst_nents, gfp);
	if (ret)
		return ret;

	FUNC16(&rctx->result_sg, qce->dma.result_buf, QCE_RESULT_BUF_SZ);

	sg = FUNC12(&rctx->dst_tbl, req->dst);
	if (FUNC0(sg)) {
		ret = FUNC1(sg);
		goto error_free;
	}

	sg = FUNC12(&rctx->dst_tbl, &rctx->result_sg);
	if (FUNC0(sg)) {
		ret = FUNC1(sg);
		goto error_free;
	}

	FUNC17(sg);
	rctx->dst_sg = rctx->dst_tbl.sgl;

	ret = FUNC7(qce->dev, rctx->dst_sg, rctx->dst_nents, dir_dst);
	if (ret < 0)
		goto error_free;

	if (diff_dst) {
		ret = FUNC7(qce->dev, req->src, rctx->src_nents, dir_src);
		if (ret < 0)
			goto error_unmap_dst;
		rctx->src_sg = req->src;
	} else {
		rctx->src_sg = rctx->dst_sg;
	}

	ret = FUNC10(&qce->dma, rctx->src_sg, rctx->src_nents,
			       rctx->dst_sg, rctx->dst_nents,
			       qce_ablkcipher_done, async_req);
	if (ret)
		goto error_unmap_src;

	FUNC9(&qce->dma);

	ret = FUNC13(async_req, tmpl->crypto_alg_type, req->nbytes, 0);
	if (ret)
		goto error_terminate;

	return 0;

error_terminate:
	FUNC11(&qce->dma);
error_unmap_src:
	if (diff_dst)
		FUNC8(qce->dev, req->src, rctx->src_nents, dir_src);
error_unmap_dst:
	FUNC8(qce->dev, rctx->dst_sg, rctx->dst_nents, dir_dst);
error_free:
	FUNC15(&rctx->dst_tbl);
	return ret;
}