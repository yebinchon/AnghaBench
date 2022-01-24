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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pa; int /*<<< orphan*/ * va; } ;
struct TYPE_6__ {TYPE_2__ pbl; int /*<<< orphan*/ * va; int /*<<< orphan*/  pa; int /*<<< orphan*/  size; int /*<<< orphan*/  ahid; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_3__ av_tbl; TYPE_1__ nic_info; } ;
struct ocrdma_delete_ah_tbl {int /*<<< orphan*/  ahid; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCRDMA_CMD_DELETE_AH_TBL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_delete_ah_tbl*) ; 
 struct ocrdma_delete_ah_tbl* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 

__attribute__((used)) static void FUNC4(struct ocrdma_dev *dev)
{
	struct ocrdma_delete_ah_tbl *cmd;
	struct pci_dev *pdev = dev->nic_info.pdev;

	if (dev->av_tbl.va == NULL)
		return;

	cmd = FUNC2(OCRDMA_CMD_DELETE_AH_TBL, sizeof(*cmd));
	if (!cmd)
		return;
	cmd->ahid = dev->av_tbl.ahid;

	FUNC3(dev, (struct ocrdma_mqe *)cmd);
	FUNC0(&pdev->dev, dev->av_tbl.size, dev->av_tbl.va,
			  dev->av_tbl.pa);
	dev->av_tbl.va = NULL;
	FUNC0(&pdev->dev, PAGE_SIZE, dev->av_tbl.pbl.va,
			  dev->av_tbl.pbl.pa);
	FUNC1(cmd);
}