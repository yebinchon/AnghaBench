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
typedef  int u32 ;
struct r82600_error_info {int eapr; } ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  R82600_EAP ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mem_ctl_info *mci,
				struct r82600_error_info *info)
{
	struct pci_dev *pdev;

	pdev = FUNC3(mci->pdev);
	FUNC1(pdev, R82600_EAP, &info->eapr);

	if (info->eapr & FUNC0(0))
		/* Clear error to allow next error to be reported [p.62] */
		FUNC2(pdev, R82600_EAP,
				 ((u32) FUNC0(0) & (u32) FUNC0(1)),
				 ((u32) FUNC0(0) & (u32) FUNC0(1)));

	if (info->eapr & FUNC0(1))
		/* Clear error to allow next error to be reported [p.62] */
		FUNC2(pdev, R82600_EAP,
				 ((u32) FUNC0(0) & (u32) FUNC0(1)),
				 ((u32) FUNC0(0) & (u32) FUNC0(1)));
}