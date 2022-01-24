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
struct e752x_pvt {int /*<<< orphan*/  dev_d0f1; int /*<<< orphan*/  dev_d0f0; } ;

/* Variables and functions */
 scalar_t__ e752x_pci ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mem_ctl_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct mem_ctl_info *mci;
	struct e752x_pvt *pvt;

	FUNC0(0, "\n");

	if (e752x_pci)
		FUNC3(e752x_pci);

	if ((mci = FUNC1(&pdev->dev)) == NULL)
		return;

	pvt = (struct e752x_pvt *)mci->pvt_info;
	FUNC4(pvt->dev_d0f0);
	FUNC4(pvt->dev_d0f1);
	FUNC2(mci);
}