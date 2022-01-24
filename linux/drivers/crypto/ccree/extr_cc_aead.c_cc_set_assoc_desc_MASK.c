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
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {int /*<<< orphan*/  auth_mode; int /*<<< orphan*/  drvdata; } ;
struct aead_request {int /*<<< orphan*/  src; } ;
struct TYPE_2__ {int /*<<< orphan*/  mlli_nents; int /*<<< orphan*/  sram_addr; } ;
struct aead_req_ctx {int assoc_buff_type; int /*<<< orphan*/  cryptlen; TYPE_1__ assoc; int /*<<< orphan*/  assoclen; } ;
typedef  enum cc_req_dma_buf_type { ____Placeholder_cc_req_dma_buf_type } cc_req_dma_buf_type ;

/* Variables and functions */
#define  CC_DMA_BUF_DLLI 130 
#define  CC_DMA_BUF_MLLI 129 
#define  CC_DMA_BUF_NULL 128 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DMA_MLLI ; 
 int /*<<< orphan*/  DRV_HASH_XCBC_MAC ; 
 int /*<<< orphan*/  NS_BIT ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct aead_request *areq, unsigned int flow_mode,
			      struct cc_hw_desc desc[], unsigned int *seq_size)
{
	struct crypto_aead *tfm = FUNC2(areq);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct aead_req_ctx *areq_ctx = FUNC0(areq);
	enum cc_req_dma_buf_type assoc_dma_type = areq_ctx->assoc_buff_type;
	unsigned int idx = *seq_size;
	struct device *dev = FUNC5(ctx->drvdata);

	switch (assoc_dma_type) {
	case CC_DMA_BUF_DLLI:
		FUNC3(dev, "ASSOC buffer type DLLI\n");
		FUNC6(&desc[idx]);
		FUNC8(&desc[idx], DMA_DLLI, FUNC10(areq->src),
			     areq_ctx->assoclen, NS_BIT);
		FUNC9(&desc[idx], flow_mode);
		if (ctx->auth_mode == DRV_HASH_XCBC_MAC &&
		    areq_ctx->cryptlen > 0)
			FUNC7(&desc[idx]);
		break;
	case CC_DMA_BUF_MLLI:
		FUNC3(dev, "ASSOC buffer type MLLI\n");
		FUNC6(&desc[idx]);
		FUNC8(&desc[idx], DMA_MLLI, areq_ctx->assoc.sram_addr,
			     areq_ctx->assoc.mlli_nents, NS_BIT);
		FUNC9(&desc[idx], flow_mode);
		if (ctx->auth_mode == DRV_HASH_XCBC_MAC &&
		    areq_ctx->cryptlen > 0)
			FUNC7(&desc[idx]);
		break;
	case CC_DMA_BUF_NULL:
	default:
		FUNC4(dev, "Invalid ASSOC buffer type\n");
	}

	*seq_size = (++idx);
}