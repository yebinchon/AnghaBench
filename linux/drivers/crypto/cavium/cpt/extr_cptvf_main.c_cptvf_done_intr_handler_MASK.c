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
typedef  scalar_t__ u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cptvf_wqe {int /*<<< orphan*/  twork; } ;
struct cpt_vf {int /*<<< orphan*/  vfid; struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_vf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct cptvf_wqe* FUNC3 (struct cpt_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *cptvf_irq)
{
	struct cpt_vf *cptvf = (struct cpt_vf *)cptvf_irq;
	struct pci_dev *pdev = cptvf->pdev;
	/* Read the number of completions */
	u32 intr = FUNC0(cptvf);

	if (intr) {
		struct cptvf_wqe *wqe;

		/* Acknowledge the number of
		 * scheduled completions for processing
		 */
		FUNC1(cptvf, intr);
		wqe = FUNC3(cptvf, 0);
		if (FUNC5(!wqe)) {
			FUNC2(&pdev->dev, "No work to schedule for VF (%d)",
				cptvf->vfid);
			return IRQ_NONE;
		}
		FUNC4(&wqe->twork);
	}

	return IRQ_HANDLED;
}