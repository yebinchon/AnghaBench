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
typedef  int u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cpt_vf {int /*<<< orphan*/  vfid; struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CPT_VF_INTR_DOVF_MASK ; 
 int CPT_VF_INTR_IRDE_MASK ; 
 int CPT_VF_INTR_MBOX_MASK ; 
 int CPT_VF_INTR_NWRP_MASK ; 
 int CPT_VF_INTR_SERR_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpt_vf*) ; 
 int FUNC6 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpt_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,...) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *cptvf_irq)
{
	struct cpt_vf *cptvf = (struct cpt_vf *)cptvf_irq;
	struct pci_dev *pdev = cptvf->pdev;
	u64 intr;

	intr = FUNC6(cptvf);
	/*Check for MISC interrupt types*/
	if (FUNC10(intr & CPT_VF_INTR_MBOX_MASK)) {
		FUNC8(&pdev->dev, "Mailbox interrupt 0x%llx on CPT VF %d\n",
			intr, cptvf->vfid);
		FUNC5(cptvf);
		FUNC2(cptvf);
	} else if (FUNC11(intr & CPT_VF_INTR_DOVF_MASK)) {
		FUNC0(cptvf);
		/*Clear doorbell count*/
		FUNC7(cptvf, 0);
		FUNC9(&pdev->dev, "Doorbell overflow error interrupt 0x%llx on CPT VF %d\n",
			intr, cptvf->vfid);
	} else if (FUNC11(intr & CPT_VF_INTR_IRDE_MASK)) {
		FUNC1(cptvf);
		FUNC9(&pdev->dev, "Instruction NCB read error interrupt 0x%llx on CPT VF %d\n",
			intr, cptvf->vfid);
	} else if (FUNC11(intr & CPT_VF_INTR_NWRP_MASK)) {
		FUNC3(cptvf);
		FUNC9(&pdev->dev, "NCB response write error interrupt 0x%llx on CPT VF %d\n",
			intr, cptvf->vfid);
	} else if (FUNC11(intr & CPT_VF_INTR_SERR_MASK)) {
		FUNC4(cptvf);
		FUNC9(&pdev->dev, "Software error interrupt 0x%llx on CPT VF %d\n",
			intr, cptvf->vfid);
	} else {
		FUNC9(&pdev->dev, "Unhandled interrupt in CPT VF %d\n",
			cptvf->vfid);
	}

	return IRQ_HANDLED;
}