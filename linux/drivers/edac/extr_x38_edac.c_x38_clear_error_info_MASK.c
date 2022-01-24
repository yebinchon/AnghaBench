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
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  X38_ERRSTS ; 
 int /*<<< orphan*/  X38_ERRSTS_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mem_ctl_info *mci)
{
	struct pci_dev *pdev;

	pdev = FUNC1(mci->pdev);

	/*
	 * Clear any error bits.
	 * (Yes, we really clear bits by writing 1 to them.)
	 */
	FUNC0(pdev, X38_ERRSTS, X38_ERRSTS_BITS,
			 X38_ERRSTS_BITS);
}