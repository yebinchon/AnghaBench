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
struct cpt_vf {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPT_VF_INT_VEC_E_DONE ; 
 int /*<<< orphan*/  CPT_VF_INT_VEC_E_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct cpt_vf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct cpt_vf* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct cpt_vf *cptvf = FUNC8(pdev);

	if (!cptvf) {
		FUNC4(&pdev->dev, "Invalid CPT-VF device\n");
		return;
	}

	/* Convey DOWN to PF */
	if (FUNC1(cptvf)) {
		FUNC4(&pdev->dev, "PF not responding to DOWN msg");
	} else {
		FUNC0(cptvf, CPT_VF_INT_VEC_E_DONE);
		FUNC0(cptvf, CPT_VF_INT_VEC_E_MISC);
		FUNC5(FUNC9(pdev, CPT_VF_INT_VEC_E_DONE), cptvf);
		FUNC5(FUNC9(pdev, CPT_VF_INT_VEC_E_MISC), cptvf);
		FUNC7(cptvf->pdev);
		FUNC2(cptvf);
		FUNC11(pdev, NULL);
		FUNC10(pdev);
		FUNC6(pdev);
		FUNC3();
	}
}