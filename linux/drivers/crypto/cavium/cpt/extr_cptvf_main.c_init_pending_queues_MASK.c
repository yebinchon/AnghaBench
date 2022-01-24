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
struct cpt_vf {int /*<<< orphan*/  pqinfo; struct pci_dev* pdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cpt_vf *cptvf, u32 qlen, u32 nr_queues)
{
	struct pci_dev *pdev = cptvf->pdev;
	int ret;

	if (!nr_queues)
		return 0;

	ret = FUNC0(&cptvf->pqinfo, qlen, nr_queues);
	if (ret) {
		FUNC1(&pdev->dev, "failed to setup pending queues (%u)\n",
			nr_queues);
		return ret;
	}

	return 0;
}