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
struct device {int dummy; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC2(struct device *kdev)
{
	struct pci_dev *pdev = FUNC0(kdev);

	return FUNC1(pdev);
}