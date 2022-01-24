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
struct cc_drvdata {int dummy; } ;
struct buffer_array {int dummy; } ;
struct aead_request {int /*<<< orphan*/  src; } ;
struct TYPE_2__ {int nents; scalar_t__ mlli_nents; } ;
struct aead_req_ctx {unsigned int assoclen; scalar_t__ assoc_buff_type; scalar_t__ ccm_hdr_size; TYPE_1__ assoc; scalar_t__ is_gcm4543; } ;

/* Variables and functions */
 scalar_t__ CC_DMA_BUF_DLLI ; 
 scalar_t__ CC_DMA_BUF_MLLI ; 
 scalar_t__ CC_DMA_BUF_NULL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES ; 
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct buffer_array*,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ ccm_header_size_null ; 
 scalar_t__ FUNC3 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC4 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int,int) ; 
 struct device* FUNC7 (struct cc_drvdata*) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct cc_drvdata *drvdata,
			       struct aead_request *req,
			       struct buffer_array *sg_data,
			       bool is_last, bool do_chain)
{
	struct aead_req_ctx *areq_ctx = FUNC0(req);
	int rc = 0;
	int mapped_nents = 0;
	struct crypto_aead *tfm = FUNC4(req);
	unsigned int size_of_assoc = areq_ctx->assoclen;
	struct device *dev = FUNC7(drvdata);

	if (areq_ctx->is_gcm4543)
		size_of_assoc += FUNC3(tfm);

	if (!sg_data) {
		rc = -EINVAL;
		goto chain_assoc_exit;
	}

	if (areq_ctx->assoclen == 0) {
		areq_ctx->assoc_buff_type = CC_DMA_BUF_NULL;
		areq_ctx->assoc.nents = 0;
		areq_ctx->assoc.mlli_nents = 0;
		FUNC5(dev, "Chain assoc of length 0: buff_type=%s nents=%u\n",
			FUNC2(areq_ctx->assoc_buff_type),
			areq_ctx->assoc.nents);
		goto chain_assoc_exit;
	}

	mapped_nents = FUNC8(req->src, size_of_assoc);
	if (mapped_nents < 0)
		return mapped_nents;

	if (mapped_nents > LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES) {
		FUNC6(dev, "Too many fragments. current %d max %d\n",
			mapped_nents, LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES);
		return -ENOMEM;
	}
	areq_ctx->assoc.nents = mapped_nents;

	/* in CCM case we have additional entry for
	 * ccm header configurations
	 */
	if (areq_ctx->ccm_hdr_size != ccm_header_size_null) {
		if ((mapped_nents + 1) > LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES) {
			FUNC6(dev, "CCM case.Too many fragments. Current %d max %d\n",
				(areq_ctx->assoc.nents + 1),
				LLI_MAX_NUM_OF_ASSOC_DATA_ENTRIES);
			rc = -ENOMEM;
			goto chain_assoc_exit;
		}
	}

	if (mapped_nents == 1 && areq_ctx->ccm_hdr_size == ccm_header_size_null)
		areq_ctx->assoc_buff_type = CC_DMA_BUF_DLLI;
	else
		areq_ctx->assoc_buff_type = CC_DMA_BUF_MLLI;

	if (do_chain || areq_ctx->assoc_buff_type == CC_DMA_BUF_MLLI) {
		FUNC5(dev, "Chain assoc: buff_type=%s nents=%u\n",
			FUNC2(areq_ctx->assoc_buff_type),
			areq_ctx->assoc.nents);
		FUNC1(dev, sg_data, areq_ctx->assoc.nents, req->src,
				areq_ctx->assoclen, 0, is_last,
				&areq_ctx->assoc.mlli_nents);
		areq_ctx->assoc_buff_type = CC_DMA_BUF_MLLI;
	}

chain_assoc_exit:
	return rc;
}