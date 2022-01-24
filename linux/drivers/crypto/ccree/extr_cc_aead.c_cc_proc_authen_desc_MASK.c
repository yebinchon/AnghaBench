#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_aead_ctx {int /*<<< orphan*/  drvdata; } ;
struct aead_request {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mlli_nents; int /*<<< orphan*/  sram_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  mlli_nents; int /*<<< orphan*/  sram_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  mlli_nents; int /*<<< orphan*/  sram_addr; } ;
struct aead_req_ctx {int data_buff_type; unsigned int dst_offset; unsigned int src_offset; TYPE_3__ src; TYPE_2__ dst; int /*<<< orphan*/  is_single_pass; TYPE_1__ assoc; int /*<<< orphan*/  cryptlen; struct scatterlist* src_sgl; struct scatterlist* dst_sgl; } ;
typedef  enum cc_req_dma_buf_type { ____Placeholder_cc_req_dma_buf_type } cc_req_dma_buf_type ;
typedef  int /*<<< orphan*/  cc_sram_addr_t ;

/* Variables and functions */
#define  CC_DMA_BUF_DLLI 130 
#define  CC_DMA_BUF_MLLI 129 
#define  CC_DMA_BUF_NULL 128 
 int /*<<< orphan*/  DMA_DLLI ; 
 int /*<<< orphan*/  DMA_MLLI ; 
 int DRV_CRYPTO_DIRECTION_ENCRYPT ; 
 int /*<<< orphan*/  NS_BIT ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 struct cc_aead_ctx* FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct device* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct cc_hw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_hw_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC10(struct aead_request *areq,
				unsigned int flow_mode,
				struct cc_hw_desc desc[],
				unsigned int *seq_size, int direct)
{
	struct aead_req_ctx *areq_ctx = FUNC0(areq);
	enum cc_req_dma_buf_type data_dma_type = areq_ctx->data_buff_type;
	unsigned int idx = *seq_size;
	struct crypto_aead *tfm = FUNC2(areq);
	struct cc_aead_ctx *ctx = FUNC1(tfm);
	struct device *dev = FUNC5(ctx->drvdata);

	switch (data_dma_type) {
	case CC_DMA_BUF_DLLI:
	{
		struct scatterlist *cipher =
			(direct == DRV_CRYPTO_DIRECTION_ENCRYPT) ?
			areq_ctx->dst_sgl : areq_ctx->src_sgl;

		unsigned int offset =
			(direct == DRV_CRYPTO_DIRECTION_ENCRYPT) ?
			areq_ctx->dst_offset : areq_ctx->src_offset;
		FUNC3(dev, "AUTHENC: SRC/DST buffer type DLLI\n");
		FUNC6(&desc[idx]);
		FUNC7(&desc[idx], DMA_DLLI,
			     (FUNC9(cipher) + offset),
			     areq_ctx->cryptlen, NS_BIT);
		FUNC8(&desc[idx], flow_mode);
		break;
	}
	case CC_DMA_BUF_MLLI:
	{
		/* DOUBLE-PASS flow (as default)
		 * assoc. + iv + data -compact in one table
		 * if assoclen is ZERO only IV perform
		 */
		cc_sram_addr_t mlli_addr = areq_ctx->assoc.sram_addr;
		u32 mlli_nents = areq_ctx->assoc.mlli_nents;

		if (areq_ctx->is_single_pass) {
			if (direct == DRV_CRYPTO_DIRECTION_ENCRYPT) {
				mlli_addr = areq_ctx->dst.sram_addr;
				mlli_nents = areq_ctx->dst.mlli_nents;
			} else {
				mlli_addr = areq_ctx->src.sram_addr;
				mlli_nents = areq_ctx->src.mlli_nents;
			}
		}

		FUNC3(dev, "AUTHENC: SRC/DST buffer type MLLI\n");
		FUNC6(&desc[idx]);
		FUNC7(&desc[idx], DMA_MLLI, mlli_addr, mlli_nents,
			     NS_BIT);
		FUNC8(&desc[idx], flow_mode);
		break;
	}
	case CC_DMA_BUF_NULL:
	default:
		FUNC4(dev, "AUTHENC: Invalid SRC/DST buffer type\n");
	}

	*seq_size = (++idx);
}