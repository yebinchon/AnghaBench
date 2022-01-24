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
struct cpt_vf {int /*<<< orphan*/  pqinfo; int /*<<< orphan*/  nr_queues; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cpt_vf *cptvf)
{
	struct pci_dev *pdev = cptvf->pdev;

	if (!cptvf->nr_queues)
		return;

	FUNC0(&pdev->dev, "Cleaning VQ pending queue (%u)\n",
		 cptvf->nr_queues);
	FUNC1(&cptvf->pqinfo);
}