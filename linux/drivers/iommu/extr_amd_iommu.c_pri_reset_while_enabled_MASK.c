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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_PRI ; 
 scalar_t__ PCI_PRI_CTRL ; 
 int /*<<< orphan*/  PCI_PRI_CTRL_RESET ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev)
{
	u16 control;
	int pos;

	pos = FUNC0(pdev, PCI_EXT_CAP_ID_PRI);
	if (!pos)
		return -EINVAL;

	FUNC1(pdev, pos + PCI_PRI_CTRL, &control);
	control |= PCI_PRI_CTRL_RESET;
	FUNC2(pdev, pos + PCI_PRI_CTRL, control);

	return 0;
}