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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct rdma_rw_ctx {scalar_t__ type; TYPE_2__* reg; } ;
struct ib_qp {TYPE_1__* pd; int /*<<< orphan*/  sig_mrs; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int /*<<< orphan*/  mr; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ RDMA_RW_SIG_MR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_qp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
		u8 port_num, struct scatterlist *sg, u32 sg_cnt,
		struct scatterlist *prot_sg, u32 prot_sg_cnt,
		enum dma_data_direction dir)
{
	if (FUNC0(ctx->type != RDMA_RW_SIG_MR))
		return;

	FUNC2(qp, &qp->sig_mrs, ctx->reg->mr);
	FUNC3(ctx->reg);

	FUNC1(qp->pd->device, sg, sg_cnt, dir);
	if (prot_sg_cnt)
		FUNC1(qp->pd->device, prot_sg, prot_sg_cnt, dir);
}