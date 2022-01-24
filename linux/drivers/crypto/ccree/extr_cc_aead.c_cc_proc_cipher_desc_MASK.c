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
struct cc_aead_ctx {int /*<<< orphan*/  drvdata; } ;
struct aead_request {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mlli_nents; int /*<<< orphan*/  sram_addr; } ;
struct TYPE_3__ {scalar_t__ mlli_nents; scalar_t__ sram_addr; } ;
struct aead_req_ctx {int data_buff_type; scalar_t__ cryptlen; TYPE_2__ dst; TYPE_1__ src; scalar_t__ dst_offset; int /*<<< orphan*/  dst_sgl; scalar_t__ src_offset; int /*<<< orphan*/  src_sgl; } ;
typedef  enum cc_req_dma_buf_type { ____Placeholder_cc_req_dma_buf_type } cc_req_dma_buf_type ;

/* Variables and functions */
#define  CC_DMA_BUF_DLLI 130 
#define  CC_DMA_BUF_MLLI 129 
#define  CC_DMA_BUF_NULL 128 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DMA_MLLI ; 
 int /*<<< orphan*/  NS_BIT ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_hw_desc*,unsigned int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct aead_request *areq,
				unsigned int flow_mode,
				struct cc_hw_desc desc[],
				unsigned int *seq_size)
{
	unsigned int idx = *seq_size;
	struct aead_req_ctx *areq_ctx = FUNC0(areq);
	enum cc_req_dma_buf_type data_dma_type = areq_ctx->data_buff_type;
	struct crypto_aead *tfm = FUNC2(areq);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct device *dev = FUNC5(ctx->drvdata);

	if (areq_ctx->cryptlen == 0)
		return; /*null processing*/

	switch (data_dma_type) {
	case CC_DMA_BUF_DLLI:
		FUNC3(dev, "CIPHER: SRC/DST buffer type DLLI\n");
		FUNC6(&desc[idx]);
		FUNC7(&desc[idx], DMA_DLLI,
			     (FUNC11(areq_ctx->src_sgl) +
			      areq_ctx->src_offset), areq_ctx->cryptlen,
			      NS_BIT);
		FUNC8(&desc[idx],
			      (FUNC11(areq_ctx->dst_sgl) +
			       areq_ctx->dst_offset),
			      areq_ctx->cryptlen, NS_BIT, 0);
		FUNC10(&desc[idx], flow_mode);
		break;
	case CC_DMA_BUF_MLLI:
		FUNC3(dev, "CIPHER: SRC/DST buffer type MLLI\n");
		FUNC6(&desc[idx]);
		FUNC7(&desc[idx], DMA_MLLI, areq_ctx->src.sram_addr,
			     areq_ctx->src.mlli_nents, NS_BIT);
		FUNC9(&desc[idx], areq_ctx->dst.sram_addr,
			      areq_ctx->dst.mlli_nents, NS_BIT, 0);
		FUNC10(&desc[idx], flow_mode);
		break;
	case CC_DMA_BUF_NULL:
	default:
		FUNC4(dev, "CIPHER: Invalid SRC/DST buffer type\n");
	}

	*seq_size = (++idx);
}