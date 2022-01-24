#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; } ;
struct skcipher_request {scalar_t__ src; scalar_t__ dst; TYPE_1__ base; } ;
struct TYPE_12__ {TYPE_2__* last; int /*<<< orphan*/ * first; } ;
struct mv_cesa_req {TYPE_3__ chain; } ;
struct mv_cesa_skcipher_req {int /*<<< orphan*/  src_nents; int /*<<< orphan*/  dst_nents; struct mv_cesa_req base; } ;
struct TYPE_13__ {int /*<<< orphan*/  op_len; } ;
struct mv_cesa_skcipher_dma_iter {int /*<<< orphan*/  dst; TYPE_6__ base; int /*<<< orphan*/  src; } ;
struct mv_cesa_op_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_CFG_SRAM_OFFSET ; 
 int /*<<< orphan*/  CESA_SA_DATA_SRAM_OFFSET ; 
 int /*<<< orphan*/  CESA_TDMA_END_OF_REQ ; 
 int /*<<< orphan*/  CESA_TDMA_SRC_IN_SRAM ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mv_cesa_op_ctx*) ; 
 int FUNC1 (struct mv_cesa_op_ctx*) ; 
 TYPE_9__* cesa_dev ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct mv_cesa_op_ctx* FUNC5 (TYPE_3__*,struct mv_cesa_op_ctx const*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mv_cesa_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mv_cesa_skcipher_dma_iter*,struct skcipher_request*) ; 
 scalar_t__ FUNC11 (struct mv_cesa_skcipher_dma_iter*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 struct mv_cesa_skcipher_req* FUNC13 (struct skcipher_request*) ; 

__attribute__((used)) static int FUNC14(struct skcipher_request *req,
					 const struct mv_cesa_op_ctx *op_templ)
{
	struct mv_cesa_skcipher_req *creq = FUNC13(req);
	gfp_t flags = (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
		      GFP_KERNEL : GFP_ATOMIC;
	struct mv_cesa_req *basereq = &creq->base;
	struct mv_cesa_skcipher_dma_iter iter;
	bool skip_ctx = false;
	int ret;

	basereq->chain.first = NULL;
	basereq->chain.last = NULL;

	if (req->src != req->dst) {
		ret = FUNC2(cesa_dev->dev, req->src, creq->src_nents,
				 DMA_TO_DEVICE);
		if (!ret)
			return -ENOMEM;

		ret = FUNC2(cesa_dev->dev, req->dst, creq->dst_nents,
				 DMA_FROM_DEVICE);
		if (!ret) {
			ret = -ENOMEM;
			goto err_unmap_src;
		}
	} else {
		ret = FUNC2(cesa_dev->dev, req->src, creq->src_nents,
				 DMA_BIDIRECTIONAL);
		if (!ret)
			return -ENOMEM;
	}

	FUNC12(&basereq->chain);
	FUNC10(&iter, req);

	do {
		struct mv_cesa_op_ctx *op;

		op = FUNC5(&basereq->chain, op_templ, skip_ctx, flags);
		if (FUNC0(op)) {
			ret = FUNC1(op);
			goto err_free_tdma;
		}
		skip_ctx = true;

		FUNC9(op, iter.base.op_len);

		/* Add input transfers */
		ret = FUNC6(&basereq->chain, &iter.base,
						   &iter.src, flags);
		if (ret)
			goto err_free_tdma;

		/* Add dummy desc to launch the crypto operation */
		ret = FUNC4(&basereq->chain, flags);
		if (ret)
			goto err_free_tdma;

		/* Add output transfers */
		ret = FUNC6(&basereq->chain, &iter.base,
						   &iter.dst, flags);
		if (ret)
			goto err_free_tdma;

	} while (FUNC11(&iter));

	/* Add output data for IV */
	ret = FUNC7(&basereq->chain, CESA_SA_CFG_SRAM_OFFSET,
				    CESA_SA_DATA_SRAM_OFFSET,
				    CESA_TDMA_SRC_IN_SRAM, flags);

	if (ret)
		goto err_free_tdma;

	basereq->chain.last->flags |= CESA_TDMA_END_OF_REQ;

	return 0;

err_free_tdma:
	FUNC8(basereq);
	if (req->dst != req->src)
		FUNC3(cesa_dev->dev, req->dst, creq->dst_nents,
			     DMA_FROM_DEVICE);

err_unmap_src:
	FUNC3(cesa_dev->dev, req->src, creq->src_nents,
		     req->dst != req->src ? DMA_TO_DEVICE : DMA_BIDIRECTIONAL);

	return ret;
}