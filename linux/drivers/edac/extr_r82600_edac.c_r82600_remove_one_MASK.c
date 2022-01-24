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
struct mem_ctl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mem_ctl_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ r82600_pci ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct mem_ctl_info *mci;

	FUNC0(0, "\n");

	if (r82600_pci)
		FUNC3(r82600_pci);

	if ((mci = FUNC1(&pdev->dev)) == NULL)
		return;

	FUNC2(mci);
}