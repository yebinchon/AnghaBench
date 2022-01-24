#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  pa; int /*<<< orphan*/  va; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int /*<<< orphan*/  pa; int /*<<< orphan*/  va; int /*<<< orphan*/  len; } ;
struct ocrdma_qp {TYPE_4__* pd; scalar_t__ dpp_enabled; TYPE_3__ rq; int /*<<< orphan*/  srq; TYPE_2__ sq; int /*<<< orphan*/  id; } ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_5__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct ocrdma_destroy_qp {int /*<<< orphan*/  qp_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  num_dpp_qp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCRDMA_CMD_DELETE_QP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_destroy_qp*) ; 
 struct ocrdma_destroy_qp* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 

int FUNC4(struct ocrdma_dev *dev, struct ocrdma_qp *qp)
{
	int status = -ENOMEM;
	struct ocrdma_destroy_qp *cmd;
	struct pci_dev *pdev = dev->nic_info.pdev;

	cmd = FUNC2(OCRDMA_CMD_DELETE_QP, sizeof(*cmd));
	if (!cmd)
		return status;
	cmd->qp_id = qp->id;
	status = FUNC3(dev, (struct ocrdma_mqe *)cmd);
	if (status)
		goto mbx_err;

mbx_err:
	FUNC1(cmd);
	if (qp->sq.va)
		FUNC0(&pdev->dev, qp->sq.len, qp->sq.va, qp->sq.pa);
	if (!qp->srq && qp->rq.va)
		FUNC0(&pdev->dev, qp->rq.len, qp->rq.va, qp->rq.pa);
	if (qp->dpp_enabled)
		qp->pd->num_dpp_qp++;
	return status;
}