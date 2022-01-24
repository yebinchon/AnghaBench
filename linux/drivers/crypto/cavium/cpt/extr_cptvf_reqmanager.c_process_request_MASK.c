#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  grp; } ;
union ctrl_info {TYPE_2__ s; } ;
struct TYPE_12__ {int /*<<< orphan*/  compcode; } ;
union cpt_res_s {TYPE_3__ s; } ;
struct TYPE_10__ {int doneint; scalar_t__ ei3; int /*<<< orphan*/  ei2; int /*<<< orphan*/  ei1; scalar_t__ ei0; scalar_t__ wq_ptr; scalar_t__ grp; scalar_t__ tag; scalar_t__ res_addr; } ;
union cpt_inst_s {TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct pending_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_count; int /*<<< orphan*/  front; int /*<<< orphan*/  rear; } ;
struct pending_entry {int busy; int /*<<< orphan*/  callback_arg; int /*<<< orphan*/  callback; void* post_arg; void* completion_addr; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct cptvf_request {int /*<<< orphan*/  dlen; int /*<<< orphan*/  param2; int /*<<< orphan*/  param1; TYPE_4__ opcode; } ;
struct TYPE_16__ {int /*<<< orphan*/  grp; } ;
struct TYPE_17__ {scalar_t__ u64; TYPE_7__ s; } ;
struct TYPE_14__ {void* dlen; void* param2; void* param1; void* opcode; } ;
struct TYPE_15__ {scalar_t__ u64; TYPE_5__ s; } ;
struct cpt_vq_command {TYPE_8__ cptr; int /*<<< orphan*/  rptr; int /*<<< orphan*/  dptr; TYPE_6__ cmd; } ;
struct TYPE_18__ {int /*<<< orphan*/  qlen; struct pending_queue* queue; } ;
struct cpt_vf {TYPE_9__ pqinfo; struct pci_dev* pdev; } ;
struct cpt_request_info {int /*<<< orphan*/  callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  req; } ;
struct cpt_info_buffer {scalar_t__ comp_baddr; struct cpt_request_info* req; int /*<<< orphan*/  time_in; struct pending_entry* pentry; void* completion_addr; int /*<<< orphan*/  rptr_baddr; int /*<<< orphan*/  dptr_baddr; int /*<<< orphan*/  dlen; struct cpt_vf* cptvf; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLETION_CODE_INIT ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PENDING_THOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct cpt_vf*,struct cpt_info_buffer*) ; 
 struct pending_entry* FUNC9 (struct pending_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cpt_vf*,TYPE_9__*,int) ; 
 int FUNC12 (struct cpt_vf*,union cpt_inst_s*,int) ; 
 int FUNC13 (struct cpt_vf*,struct cpt_info_buffer*,struct cpt_request_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 

int FUNC17(struct cpt_vf *cptvf, struct cpt_request_info *req)
{
	int ret = 0, clear = 0, queue = 0;
	struct cpt_info_buffer *info = NULL;
	struct cptvf_request *cpt_req = NULL;
	union ctrl_info *ctrl = NULL;
	union cpt_res_s *result = NULL;
	struct pending_entry *pentry = NULL;
	struct pending_queue *pqueue = NULL;
	struct pci_dev *pdev = cptvf->pdev;
	u8 group = 0;
	struct cpt_vq_command vq_cmd;
	union cpt_inst_s cptinst;

	info = FUNC10(sizeof(*info), GFP_KERNEL);
	if (FUNC16(!info)) {
		FUNC5(&pdev->dev, "Unable to allocate memory for info_buffer\n");
		return -ENOMEM;
	}

	cpt_req = (struct cptvf_request *)&req->req;
	ctrl = (union ctrl_info *)&req->ctrl;

	info->cptvf = cptvf;
	group = ctrl->s.grp;
	ret = FUNC13(cptvf, info, req);
	if (ret) {
		FUNC5(&pdev->dev, "Setting up SG list failed");
		goto request_cleanup;
	}

	cpt_req->dlen = info->dlen;
	/*
	 * Get buffer for union cpt_res_s response
	 * structure and its physical address
	 */
	info->completion_addr = FUNC10(sizeof(union cpt_res_s), GFP_KERNEL);
	if (FUNC16(!info->completion_addr)) {
		FUNC5(&pdev->dev, "Unable to allocate memory for completion_addr\n");
		ret = -ENOMEM;
		goto request_cleanup;
	}

	result = (union cpt_res_s *)info->completion_addr;
	result->s.compcode = COMPLETION_CODE_INIT;
	info->comp_baddr = FUNC6(&pdev->dev,
					       (void *)info->completion_addr,
					       sizeof(union cpt_res_s),
					       DMA_BIDIRECTIONAL);
	if (FUNC7(&pdev->dev, info->comp_baddr)) {
		FUNC5(&pdev->dev, "mapping compptr Failed %lu\n",
			sizeof(union cpt_res_s));
		ret = -EFAULT;
		goto  request_cleanup;
	}

	/* Fill the VQ command */
	vq_cmd.cmd.u64 = 0;
	vq_cmd.cmd.s.opcode = FUNC2(cpt_req->opcode.flags);
	vq_cmd.cmd.s.param1 = FUNC2(cpt_req->param1);
	vq_cmd.cmd.s.param2 = FUNC2(cpt_req->param2);
	vq_cmd.cmd.s.dlen   = FUNC2(cpt_req->dlen);

	/* 64-bit swap for microcode data reads, not needed for addresses*/
	vq_cmd.cmd.u64 = FUNC3(vq_cmd.cmd.u64);
	vq_cmd.dptr = info->dptr_baddr;
	vq_cmd.rptr = info->rptr_baddr;
	vq_cmd.cptr.u64 = 0;
	vq_cmd.cptr.s.grp = group;
	/* Get Pending Entry to submit command */
	/* Always queue 0, because 1 queue per VF */
	queue = 0;
	pqueue = &cptvf->pqinfo.queue[queue];

	if (FUNC1(&pqueue->pending_count) > PENDING_THOLD) {
		FUNC5(&pdev->dev, "pending threshold reached\n");
		FUNC11(cptvf, &cptvf->pqinfo, queue);
	}

get_pending_entry:
	FUNC14(&pqueue->lock);
	pentry = FUNC9(pqueue, cptvf->pqinfo.qlen);
	if (FUNC16(!pentry)) {
		FUNC15(&pqueue->lock);
		if (clear == 0) {
			FUNC11(cptvf, &cptvf->pqinfo, queue);
			clear = 1;
			goto get_pending_entry;
		}
		FUNC5(&pdev->dev, "Get free entry failed\n");
		FUNC5(&pdev->dev, "queue: %d, rear: %d, front: %d\n",
			queue, pqueue->rear, pqueue->front);
		ret = -EFAULT;
		goto request_cleanup;
	}

	pentry->completion_addr = info->completion_addr;
	pentry->post_arg = (void *)info;
	pentry->callback = req->callback;
	pentry->callback_arg = req->callback_arg;
	info->pentry = pentry;
	pentry->busy = true;
	FUNC0(&pqueue->pending_count);

	/* Send CPT command */
	info->pentry = pentry;
	info->time_in = jiffies;
	info->req = req;

	/* Create the CPT_INST_S type command for HW intrepretation */
	cptinst.s.doneint = true;
	cptinst.s.res_addr = (u64)info->comp_baddr;
	cptinst.s.tag = 0;
	cptinst.s.grp = 0;
	cptinst.s.wq_ptr = 0;
	cptinst.s.ei0 = vq_cmd.cmd.u64;
	cptinst.s.ei1 = vq_cmd.dptr;
	cptinst.s.ei2 = vq_cmd.rptr;
	cptinst.s.ei3 = vq_cmd.cptr.u64;

	ret = FUNC12(cptvf, &cptinst, queue);
	FUNC15(&pqueue->lock);
	if (FUNC16(ret)) {
		FUNC5(&pdev->dev, "Send command failed for AE\n");
		ret = -EFAULT;
		goto request_cleanup;
	}

	return 0;

request_cleanup:
	FUNC4(&pdev->dev, "Failed to submit CPT command\n");
	FUNC8(cptvf, info);

	return ret;
}