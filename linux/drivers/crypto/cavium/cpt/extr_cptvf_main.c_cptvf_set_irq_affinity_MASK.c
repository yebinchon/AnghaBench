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
struct cpt_vf {int vfid; int /*<<< orphan*/ * affinity_mask; int /*<<< orphan*/  node; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct cpt_vf *cptvf, int vec)
{
	struct pci_dev *pdev = cptvf->pdev;
	int cpu;

	if (!FUNC6(&cptvf->affinity_mask[vec],
				GFP_KERNEL)) {
		FUNC2(&pdev->dev, "Allocation failed for affinity_mask for VF %d",
			cptvf->vfid);
		return;
	}

	cpu = cptvf->vfid % FUNC4();
	FUNC1(FUNC0(cpu, cptvf->node),
			cptvf->affinity_mask[vec]);
	FUNC3(FUNC5(pdev, vec),
			cptvf->affinity_mask[vec]);
}