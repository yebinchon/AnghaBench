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
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC6(struct pci_dev *pdev)
{
	return FUNC3(pdev) || FUNC5(pdev) || FUNC2(pdev) ||
		FUNC1(pdev) || FUNC0(pdev) || FUNC4(pdev);
}