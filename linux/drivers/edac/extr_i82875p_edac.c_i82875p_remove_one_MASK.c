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
struct mem_ctl_info {scalar_t__ pvt_info; } ;
struct i82875p_pvt {scalar_t__ ovrfl_pdev; scalar_t__ ovrfl_window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mem_ctl_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ i82875p_pci ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct mem_ctl_info *mci;
	struct i82875p_pvt *pvt = NULL;

	FUNC0(0, "\n");

	if (i82875p_pci)
		FUNC3(i82875p_pci);

	if ((mci = FUNC1(&pdev->dev)) == NULL)
		return;

	pvt = (struct i82875p_pvt *)mci->pvt_info;

	if (pvt->ovrfl_window)
		FUNC4(pvt->ovrfl_window);

	if (pvt->ovrfl_pdev) {
#ifdef CORRECT_BIOS
		pci_release_regions(pvt->ovrfl_pdev);
#endif				/*CORRECT_BIOS */
		FUNC6(pvt->ovrfl_pdev);
		FUNC5(pvt->ovrfl_pdev);
	}

	FUNC2(mci);
}