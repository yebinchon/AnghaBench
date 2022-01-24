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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ MSR_IDE_CFG ; 
 scalar_t__ PCI_IDE_CFG ; 
 int FUNC0 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_msr ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, int reg, u32 *val)
{
	if (FUNC2(use_msr)) {
		u32 dummy;

		FUNC1(MSR_IDE_CFG + reg, *val, dummy);
		return 0;
	}

	return FUNC0(pdev, PCI_IDE_CFG + reg * 4, val);
}