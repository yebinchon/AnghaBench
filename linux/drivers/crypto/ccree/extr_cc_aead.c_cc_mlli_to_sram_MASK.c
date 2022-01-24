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
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {TYPE_2__* drvdata; } ;
struct aead_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ mlli_len; int /*<<< orphan*/  mlli_dma_addr; } ;
struct aead_req_ctx {scalar_t__ assoc_buff_type; scalar_t__ data_buff_type; TYPE_1__ mlli_params; int /*<<< orphan*/  is_single_pass; } ;
struct TYPE_4__ {scalar_t__ mlli_sram_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BYPASS ; 
 scalar_t__ CC_DMA_BUF_MLLI ; 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  NS_BIT ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int,scalar_t__) ; 
 struct device* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct aead_request *req,
			    struct cc_hw_desc desc[], unsigned int *seq_size)
{
	struct aead_req_ctx *req_ctx = FUNC0(req);
	struct crypto_aead *tfm = FUNC2(req);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct device *dev = FUNC4(ctx->drvdata);

	if ((req_ctx->assoc_buff_type == CC_DMA_BUF_MLLI ||
	    req_ctx->data_buff_type == CC_DMA_BUF_MLLI ||
	    !req_ctx->is_single_pass) && req_ctx->mlli_params.mlli_len) {
		FUNC3(dev, "Copy-to-sram: mlli_dma=%08x, mlli_size=%u\n",
			(unsigned int)ctx->drvdata->mlli_sram_addr,
			req_ctx->mlli_params.mlli_len);
		/* Copy MLLI table host-to-sram */
		FUNC5(&desc[*seq_size]);
		FUNC6(&desc[*seq_size], DMA_DLLI,
			     req_ctx->mlli_params.mlli_dma_addr,
			     req_ctx->mlli_params.mlli_len, NS_BIT);
		FUNC7(&desc[*seq_size],
			      ctx->drvdata->mlli_sram_addr,
			      req_ctx->mlli_params.mlli_len);
		FUNC8(&desc[*seq_size], BYPASS);
		(*seq_size)++;
	}
}