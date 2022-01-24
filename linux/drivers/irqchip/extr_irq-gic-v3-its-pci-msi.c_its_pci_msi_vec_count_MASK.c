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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, void *data)
{
	int msi, msix, *count = data;

	msi = FUNC0(FUNC1(pdev), 0);
	msix = FUNC0(FUNC2(pdev), 0);
	*count += FUNC0(msi, msix);

	return 0;
}