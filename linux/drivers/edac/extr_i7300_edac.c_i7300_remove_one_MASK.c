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
struct i7300_pvt {char* tmp_prt_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mem_ctl_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ i7300_pci ; 
 int /*<<< orphan*/  FUNC4 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct mem_ctl_info *mci;
	char *tmp;

	FUNC0(0, "\n");

	if (i7300_pci)
		FUNC3(i7300_pci);

	mci = FUNC1(&pdev->dev);
	if (!mci)
		return;

	tmp = ((struct i7300_pvt *)mci->pvt_info)->tmp_prt_buffer;

	/* retrieve references to resources, and free those resources */
	FUNC4(mci);

	FUNC5(tmp);
	FUNC2(mci);
}