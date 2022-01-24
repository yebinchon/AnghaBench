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
typedef  int /*<<< orphan*/  u64 ;
struct srp_tsk_mgmt {int tag; int /*<<< orphan*/  task_tag; int /*<<< orphan*/  tsk_mgmt_func; int /*<<< orphan*/  lun; int /*<<< orphan*/  opcode; } ;
struct srp_target_port {scalar_t__ qp_in_error; TYPE_2__* srp_host; struct srp_rport* rport; } ;
struct srp_rport {int /*<<< orphan*/  mutex; } ;
struct srp_rdma_ch {int tsk_mgmt_tag; int /*<<< orphan*/  tsk_mgmt_status; int /*<<< orphan*/  tsk_mgmt_done; int /*<<< orphan*/  lock; int /*<<< orphan*/  connected; struct srp_target_port* target; } ;
struct srp_iu {int num_sge; int /*<<< orphan*/  dma; struct srp_tsk_mgmt* buf; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* srp_dev; } ;
struct TYPE_3__ {struct ib_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  SRP_ABORT_TIMEOUT_MS ; 
 int /*<<< orphan*/  SRP_IU_TSK_MGMT ; 
 int SRP_TAG_TSK_MGMT ; 
 int /*<<< orphan*/  SRP_TSK_MGMT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct srp_iu* FUNC1 (struct srp_rdma_ch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct srp_tsk_mgmt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct srp_rdma_ch*,struct srp_iu*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct srp_rdma_ch*,struct srp_iu*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct srp_rdma_ch *ch, u64 req_tag, u64 lun,
			     u8 func, u8 *status)
{
	struct srp_target_port *target = ch->target;
	struct srp_rport *rport = target->rport;
	struct ib_device *dev = target->srp_host->srp_dev->dev;
	struct srp_iu *iu;
	struct srp_tsk_mgmt *tsk_mgmt;
	int res;

	if (!ch->connected || target->qp_in_error)
		return -1;

	/*
	 * Lock the rport mutex to avoid that srp_create_ch_ib() is
	 * invoked while a task management function is being sent.
	 */
	FUNC8(&rport->mutex);
	FUNC10(&ch->lock);
	iu = FUNC1(ch, SRP_IU_TSK_MGMT);
	FUNC11(&ch->lock);

	if (!iu) {
		FUNC9(&rport->mutex);

		return -1;
	}

	iu->num_sge = 1;

	FUNC2(dev, iu->dma, sizeof *tsk_mgmt,
				   DMA_TO_DEVICE);
	tsk_mgmt = iu->buf;
	FUNC6(tsk_mgmt, 0, sizeof *tsk_mgmt);

	tsk_mgmt->opcode 	= SRP_TSK_MGMT;
	FUNC5(lun, &tsk_mgmt->lun);
	tsk_mgmt->tsk_mgmt_func = func;
	tsk_mgmt->task_tag	= req_tag;

	FUNC10(&ch->lock);
	ch->tsk_mgmt_tag = (ch->tsk_mgmt_tag + 1) | SRP_TAG_TSK_MGMT;
	tsk_mgmt->tag = ch->tsk_mgmt_tag;
	FUNC11(&ch->lock);

	FUNC4(&ch->tsk_mgmt_done);

	FUNC3(dev, iu->dma, sizeof *tsk_mgmt,
				      DMA_TO_DEVICE);
	if (FUNC12(ch, iu, sizeof(*tsk_mgmt))) {
		FUNC13(ch, iu, SRP_IU_TSK_MGMT);
		FUNC9(&rport->mutex);

		return -1;
	}
	res = FUNC14(&ch->tsk_mgmt_done,
					FUNC7(SRP_ABORT_TIMEOUT_MS));
	if (res > 0 && status)
		*status = ch->tsk_mgmt_status;
	FUNC9(&rport->mutex);

	FUNC0(res < 0);

	return res > 0 ? 0 : -1;
}