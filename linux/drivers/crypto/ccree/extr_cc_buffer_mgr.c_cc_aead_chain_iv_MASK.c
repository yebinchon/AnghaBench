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
struct cc_drvdata {int dummy; } ;
struct buffer_array {int dummy; } ;
struct aead_request {int /*<<< orphan*/  iv; int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int /*<<< orphan*/  mlli_nents; } ;
struct TYPE_3__ {scalar_t__ iv_dma_addr; int /*<<< orphan*/ * iv; } ;
struct aead_req_ctx {unsigned int hw_iv_size; int /*<<< orphan*/  assoc_buff_type; TYPE_2__ assoc; TYPE_1__ gen_ctx; scalar_t__ plaintext_authenticate_only; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CC_DMA_BUF_MLLI ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 unsigned int GCM_BLOCK_RFC4_IV_OFFSET ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct buffer_array*,scalar_t__,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,unsigned int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct device*,scalar_t__) ; 
 struct device* FUNC9 (struct cc_drvdata*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct cc_drvdata *drvdata,
			    struct aead_request *req,
			    struct buffer_array *sg_data,
			    bool is_last, bool do_chain)
{
	struct aead_req_ctx *areq_ctx = FUNC0(req);
	unsigned int hw_iv_size = areq_ctx->hw_iv_size;
	struct device *dev = FUNC9(drvdata);
	gfp_t flags = FUNC2(&req->base);
	int rc = 0;

	if (!req->iv) {
		areq_ctx->gen_ctx.iv_dma_addr = 0;
		areq_ctx->gen_ctx.iv = NULL;
		goto chain_iv_exit;
	}

	areq_ctx->gen_ctx.iv = FUNC10(req->iv, hw_iv_size, flags);
	if (!areq_ctx->gen_ctx.iv)
		return -ENOMEM;

	areq_ctx->gen_ctx.iv_dma_addr =
		FUNC7(dev, areq_ctx->gen_ctx.iv, hw_iv_size,
			       DMA_BIDIRECTIONAL);
	if (FUNC8(dev, areq_ctx->gen_ctx.iv_dma_addr)) {
		FUNC6(dev, "Mapping iv %u B at va=%pK for DMA failed\n",
			hw_iv_size, req->iv);
		FUNC11(areq_ctx->gen_ctx.iv);
		areq_ctx->gen_ctx.iv = NULL;
		rc = -ENOMEM;
		goto chain_iv_exit;
	}

	FUNC5(dev, "Mapped iv %u B at va=%pK to dma=%pad\n",
		hw_iv_size, req->iv, &areq_ctx->gen_ctx.iv_dma_addr);
	// TODO: what about CTR?? ask Ron
	if (do_chain && areq_ctx->plaintext_authenticate_only) {
		struct crypto_aead *tfm = FUNC4(req);
		unsigned int iv_size_to_authenc = FUNC3(tfm);
		unsigned int iv_ofs = GCM_BLOCK_RFC4_IV_OFFSET;
		/* Chain to given list */
		FUNC1(dev, sg_data,
				    (areq_ctx->gen_ctx.iv_dma_addr + iv_ofs),
				    iv_size_to_authenc, is_last,
				    &areq_ctx->assoc.mlli_nents);
		areq_ctx->assoc_buff_type = CC_DMA_BUF_MLLI;
	}

chain_iv_exit:
	return rc;
}