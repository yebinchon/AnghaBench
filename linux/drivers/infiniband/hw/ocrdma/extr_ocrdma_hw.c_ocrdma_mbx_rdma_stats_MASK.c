#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_8__ {TYPE_2__* sge; } ;
struct TYPE_9__ {TYPE_3__ nonemb_req; } ;
struct TYPE_6__ {int pyld_len; int spcl_sge_cnt_emb; } ;
struct ocrdma_rdma_stats_resp {int reset_stats; TYPE_4__ u; TYPE_1__ hdr; } ;
struct ocrdma_rdma_stats_req {int reset_stats; TYPE_4__ u; TYPE_1__ hdr; } ;
struct ocrdma_mqe {int reset_stats; TYPE_4__ u; TYPE_1__ hdr; } ;
struct ocrdma_mbx_hdr {int dummy; } ;
struct TYPE_10__ {int size; int pa; struct ocrdma_rdma_stats_resp* va; struct ocrdma_rdma_stats_resp mqe; } ;
struct ocrdma_dev {TYPE_5__ stats_mem; } ;
struct TYPE_7__ {int len; void* pa_hi; void* pa_lo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OCRDMA_CMD_GET_RDMA_STATS ; 
 int OCRDMA_MQE_HDR_SGE_CNT_MASK ; 
 int OCRDMA_MQE_HDR_SGE_CNT_SHIFT ; 
 int /*<<< orphan*/  OCRDMA_SUBSYS_ROCE ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_rdma_stats_resp*) ; 
 struct ocrdma_rdma_stats_resp* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_rdma_stats_resp*,struct ocrdma_rdma_stats_resp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_rdma_stats_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_mbx_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_rdma_stats_resp*,int) ; 
 int FUNC6 (struct ocrdma_dev*,struct ocrdma_rdma_stats_resp*,struct ocrdma_rdma_stats_resp*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct ocrdma_dev *dev, bool reset)
{
	struct ocrdma_rdma_stats_req *req = dev->stats_mem.va;
	struct ocrdma_mqe *mqe = &dev->stats_mem.mqe;
	struct ocrdma_rdma_stats_resp *old_stats;
	int status;

	old_stats = FUNC1(sizeof(*old_stats), GFP_KERNEL);
	if (old_stats == NULL)
		return -ENOMEM;

	FUNC3(mqe, 0, sizeof(*mqe));
	mqe->hdr.pyld_len = dev->stats_mem.size;
	mqe->hdr.spcl_sge_cnt_emb |=
			(1 << OCRDMA_MQE_HDR_SGE_CNT_SHIFT) &
				OCRDMA_MQE_HDR_SGE_CNT_MASK;
	mqe->u.nonemb_req.sge[0].pa_lo = (u32) (dev->stats_mem.pa & 0xffffffff);
	mqe->u.nonemb_req.sge[0].pa_hi = (u32) FUNC7(dev->stats_mem.pa);
	mqe->u.nonemb_req.sge[0].len = dev->stats_mem.size;

	/* Cache the old stats */
	FUNC2(old_stats, req, sizeof(struct ocrdma_rdma_stats_resp));
	FUNC3(req, 0, dev->stats_mem.size);

	FUNC4((struct ocrdma_mbx_hdr *)req,
			OCRDMA_CMD_GET_RDMA_STATS,
			OCRDMA_SUBSYS_ROCE,
			dev->stats_mem.size);
	if (reset)
		req->reset_stats = reset;

	status = FUNC6(dev, mqe, dev->stats_mem.va);
	if (status)
		/* Copy from cache, if mbox fails */
		FUNC2(req, old_stats, sizeof(struct ocrdma_rdma_stats_resp));
	else
		FUNC5(req, dev->stats_mem.size);

	FUNC0(old_stats);
	return status;
}