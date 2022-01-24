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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct pci_dev *FUNC6(int dom, unsigned int bus,
					   unsigned int dev, unsigned int fun)
{
	struct pci_dev *pdev;

	pdev = FUNC4(dom, bus, FUNC0(dev, fun));
	if (!pdev) {
		FUNC1(2, "No device %02x:%02x.%x\n",
			 bus, dev, fun);
		return NULL;
	}

	if (FUNC5(FUNC3(pdev) < 0)) {
		FUNC1(2, "Failed to enable device %02x:%02x.%x\n",
			 bus, dev, fun);
		return NULL;
	}

	FUNC2(pdev);

	return pdev;
}