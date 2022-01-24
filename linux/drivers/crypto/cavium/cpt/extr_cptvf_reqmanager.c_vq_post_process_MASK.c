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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cpt_vf {int /*<<< orphan*/  pqinfo; int /*<<< orphan*/  nr_queues; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_vf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct cpt_vf *cptvf, u32 qno)
{
	struct pci_dev *pdev = cptvf->pdev;

	if (FUNC2(qno > cptvf->nr_queues)) {
		FUNC0(&pdev->dev, "Request for post processing on invalid pending queue: %u\n",
			qno);
		return;
	}

	FUNC1(cptvf, &cptvf->pqinfo, qno);
}