#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cptvf_wqe_info {TYPE_1__* vq_wqe; } ;
struct cpt_vf {int nr_queues; int /*<<< orphan*/ * wqe_info; struct pci_dev* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  twork; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cptvf_wqe_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cpt_vf *cptvf)
{
	struct cptvf_wqe_info *cwqe_info;
	struct pci_dev *pdev = cptvf->pdev;
	int i;

	cwqe_info = (struct cptvf_wqe_info *)cptvf->wqe_info;
	if (!cwqe_info)
		return;

	if (cptvf->nr_queues) {
		FUNC0(&pdev->dev, "Cleaning VQ worker threads (%u)\n",
			 cptvf->nr_queues);
	}

	for (i = 0; i < cptvf->nr_queues; i++)
		FUNC2(&cwqe_info->vq_wqe[i].twork);

	FUNC1(cwqe_info);
	cptvf->wqe_info = NULL;
}