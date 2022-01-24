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
struct mv_cesa_tdma_chain {int dummy; } ;
struct mv_cesa_op_ctx {int dummy; } ;
struct mv_cesa_ahash_dma_req {scalar_t__ padding_dma; int /*<<< orphan*/  padding; } ;
struct TYPE_2__ {struct mv_cesa_ahash_dma_req dma; } ;
struct mv_cesa_ahash_req {int /*<<< orphan*/  op_tmpl; int /*<<< orphan*/  len; TYPE_1__ req; } ;
struct mv_cesa_ahash_dma_iter {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_CFG_SRAM_OFFSET ; 
 scalar_t__ CESA_SA_DATA_SRAM_OFFSET ; 
 int /*<<< orphan*/  CESA_SA_DESC_CFG_FRAG_MSK ; 
 int /*<<< orphan*/  CESA_SA_DESC_CFG_LAST_FRAG ; 
 int /*<<< orphan*/  CESA_SA_DESC_CFG_NOT_FRAG ; 
 int /*<<< orphan*/  CESA_SA_DESC_MAC_SRC_TOTAL_LEN_MAX ; 
 scalar_t__ CESA_SA_SRAM_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  CESA_TDMA_DST_IN_SRAM ; 
 int /*<<< orphan*/  CESA_TDMA_SRC_IN_SRAM ; 
 int ENOMEM ; 
 struct mv_cesa_op_ctx* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mv_cesa_op_ctx*) ; 
 unsigned int FUNC2 (scalar_t__,unsigned int) ; 
 int FUNC3 (struct mv_cesa_ahash_dma_req*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct mv_cesa_ahash_req*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mv_cesa_tdma_chain*,scalar_t__,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mv_cesa_op_ctx* FUNC6 (struct mv_cesa_tdma_chain*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mv_cesa_tdma_chain*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mv_cesa_op_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mv_cesa_op_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mv_cesa_op_ctx *
FUNC11(struct mv_cesa_tdma_chain *chain,
			   struct mv_cesa_ahash_dma_iter *dma_iter,
			   struct mv_cesa_ahash_req *creq,
			   unsigned int frag_len, gfp_t flags)
{
	struct mv_cesa_ahash_dma_req *ahashdreq = &creq->req.dma;
	unsigned int len, trailerlen, padoff = 0;
	struct mv_cesa_op_ctx *op;
	int ret;

	/*
	 * If the transfer is smaller than our maximum length, and we have
	 * some data outstanding, we can ask the engine to finish the hash.
	 */
	if (creq->len <= CESA_SA_DESC_MAC_SRC_TOTAL_LEN_MAX && frag_len) {
		op = FUNC6(chain, &creq->op_tmpl, frag_len,
					  flags);
		if (FUNC1(op))
			return op;

		FUNC9(op, creq->len);
		FUNC10(op, FUNC8(op) ?
						CESA_SA_DESC_CFG_NOT_FRAG :
						CESA_SA_DESC_CFG_LAST_FRAG,
				      CESA_SA_DESC_CFG_FRAG_MSK);

		ret = FUNC7(chain,
						CESA_SA_CFG_SRAM_OFFSET,
						CESA_SA_DATA_SRAM_OFFSET,
						CESA_TDMA_SRC_IN_SRAM, flags);
		if (ret)
			return FUNC0(-ENOMEM);
		return op;
	}

	/*
	 * The request is longer than the engine can handle, or we have
	 * no data outstanding. Manually generate the padding, adding it
	 * as a "mid" fragment.
	 */
	ret = FUNC3(ahashdreq, flags);
	if (ret)
		return FUNC0(ret);

	trailerlen = FUNC4(creq, ahashdreq->padding);

	len = FUNC2(CESA_SA_SRAM_PAYLOAD_SIZE - frag_len, trailerlen);
	if (len) {
		ret = FUNC5(chain,
						CESA_SA_DATA_SRAM_OFFSET +
						frag_len,
						ahashdreq->padding_dma,
						len, CESA_TDMA_DST_IN_SRAM,
						flags);
		if (ret)
			return FUNC0(ret);

		op = FUNC6(chain, &creq->op_tmpl, frag_len + len,
					  flags);
		if (FUNC1(op))
			return op;

		if (len == trailerlen)
			return op;

		padoff += len;
	}

	ret = FUNC5(chain,
					    CESA_SA_DATA_SRAM_OFFSET,
					    ahashdreq->padding_dma +
					    padoff,
					    trailerlen - padoff,
					    CESA_TDMA_DST_IN_SRAM,
					    flags);
	if (ret)
		return FUNC0(ret);

	return FUNC6(chain, &creq->op_tmpl, trailerlen - padoff,
				    flags);
}