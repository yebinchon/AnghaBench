#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cpt_vf {int /*<<< orphan*/  priority; struct pci_dev* pdev; } ;
struct cpt_mbox {int /*<<< orphan*/  data; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPT_MSG_VQ_PRIORITY ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct cpt_vf*,struct cpt_mbox*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

int FUNC2(struct cpt_vf *cptvf)
{
	struct pci_dev *pdev = cptvf->pdev;
	struct cpt_mbox mbx = {};

	mbx.msg = CPT_MSG_VQ_PRIORITY;
	/* Convey group of the VF */
	mbx.data = cptvf->priority;
	if (FUNC0(cptvf, &mbx)) {
		FUNC1(&pdev->dev, "PF didn't respond to vf_type msg\n");
		return -EBUSY;
	}
	return 0;
}