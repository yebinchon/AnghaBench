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
typedef  int u32 ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct mtk_ring {struct mtk_desc* res_prev; struct mtk_desc* res_base; struct mtk_desc* res_next; struct mtk_desc* cmd_base; struct mtk_desc* cmd_next; } ;
struct mtk_desc {int hdr; void* buf; void* tfm; int /*<<< orphan*/  ct_hdr; void* ct; } ;
struct mtk_cryp {struct mtk_ring** ring; } ;
struct TYPE_5__ {int sg_len; struct scatterlist* sg; } ;
struct TYPE_4__ {int sg_len; struct scatterlist* sg; } ;
struct mtk_aes_rec {size_t id; int flags; TYPE_3__* ctx; TYPE_2__ dst; TYPE_1__ src; } ;
struct TYPE_6__ {int /*<<< orphan*/  tfm_dma; int /*<<< orphan*/  ct_hdr; int /*<<< orphan*/  ct_dma; int /*<<< orphan*/  ct_size; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 int AES_FLAGS_GCM ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int EINPROGRESS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int MTK_DESC_FIRST ; 
 int MTK_DESC_LAST ; 
 int MTK_DESC_NUM ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_cryp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 
 struct scatterlist* FUNC8 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct mtk_cryp *cryp, struct mtk_aes_rec *aes)
{
	struct mtk_ring *ring = cryp->ring[aes->id];
	struct mtk_desc *cmd = NULL, *res = NULL;
	struct scatterlist *ssg = aes->src.sg, *dsg = aes->dst.sg;
	u32 slen = aes->src.sg_len, dlen = aes->dst.sg_len;
	int nents;

	/* Write command descriptors */
	for (nents = 0; nents < slen; ++nents, ssg = FUNC8(ssg)) {
		cmd = ring->cmd_next;
		cmd->hdr = FUNC1(ssg->length);
		cmd->buf = FUNC5(FUNC7(ssg));

		if (nents == 0) {
			cmd->hdr |= MTK_DESC_FIRST |
				    FUNC3(aes->ctx->ct_size);
			cmd->ct = FUNC5(aes->ctx->ct_dma);
			cmd->ct_hdr = aes->ctx->ct_hdr;
			cmd->tfm = FUNC5(aes->ctx->tfm_dma);
		}

		/* Shift ring buffer and check boundary */
		if (++ring->cmd_next == ring->cmd_base + MTK_DESC_NUM)
			ring->cmd_next = ring->cmd_base;
	}
	cmd->hdr |= MTK_DESC_LAST;

	/* Prepare result descriptors */
	for (nents = 0; nents < dlen; ++nents, dsg = FUNC8(dsg)) {
		res = ring->res_next;
		res->hdr = FUNC1(dsg->length);
		res->buf = FUNC5(FUNC7(dsg));

		if (nents == 0)
			res->hdr |= MTK_DESC_FIRST;

		/* Shift ring buffer and check boundary */
		if (++ring->res_next == ring->res_base + MTK_DESC_NUM)
			ring->res_next = ring->res_base;
	}
	res->hdr |= MTK_DESC_LAST;

	/* Pointer to current result descriptor */
	ring->res_prev = res;

	/* Prepare enough space for authenticated tag */
	if (aes->flags & AES_FLAGS_GCM)
		res->hdr += AES_BLOCK_SIZE;

	/*
	 * Make sure that all changes to the DMA ring are done before we
	 * start engine.
	 */
	FUNC9();
	/* Start DMA transfer */
	FUNC6(cryp, FUNC4(aes->id), FUNC2(dlen));
	FUNC6(cryp, FUNC0(aes->id), FUNC2(slen));

	return -EINPROGRESS;
}