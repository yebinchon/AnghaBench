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
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mlli_dma_addr; scalar_t__ mlli_virt_addr; int /*<<< orphan*/  curr_pool; } ;
struct TYPE_3__ {scalar_t__ iv_dma_addr; } ;
struct cipher_req_ctx {scalar_t__ dma_buf_type; int /*<<< orphan*/  out_nents; int /*<<< orphan*/  in_nents; TYPE_2__ mlli_params; TYPE_1__ gen_ctx; } ;

/* Variables and functions */
 scalar_t__ CC_DMA_BUF_MLLI ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 

void FUNC5(struct device *dev, void *ctx,
				unsigned int ivsize, struct scatterlist *src,
				struct scatterlist *dst)
{
	struct cipher_req_ctx *req_ctx = (struct cipher_req_ctx *)ctx;

	if (req_ctx->gen_ctx.iv_dma_addr) {
		FUNC0(dev, "Unmapped iv: iv_dma_addr=%pad iv_size=%u\n",
			&req_ctx->gen_ctx.iv_dma_addr, ivsize);
		FUNC3(dev, req_ctx->gen_ctx.iv_dma_addr,
				 ivsize, DMA_BIDIRECTIONAL);
	}
	/* Release pool */
	if (req_ctx->dma_buf_type == CC_DMA_BUF_MLLI &&
	    req_ctx->mlli_params.mlli_virt_addr) {
		FUNC1(req_ctx->mlli_params.curr_pool,
			      req_ctx->mlli_params.mlli_virt_addr,
			      req_ctx->mlli_params.mlli_dma_addr);
	}

	FUNC2(dev, src, req_ctx->in_nents, DMA_BIDIRECTIONAL);
	FUNC0(dev, "Unmapped req->src=%pK\n", FUNC4(src));

	if (src != dst) {
		FUNC2(dev, dst, req_ctx->out_nents, DMA_BIDIRECTIONAL);
		FUNC0(dev, "Unmapped req->dst=%pK\n", FUNC4(dst));
	}
}