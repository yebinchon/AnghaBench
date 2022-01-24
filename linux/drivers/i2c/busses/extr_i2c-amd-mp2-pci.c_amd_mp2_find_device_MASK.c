#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct amd_mp2_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 TYPE_1__ amd_mp2_pci_driver ; 
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

struct amd_mp2_dev *FUNC3(void)
{
	struct device *dev;
	struct pci_dev *pci_dev;

	dev = FUNC0(&amd_mp2_pci_driver.driver, NULL);
	if (!dev)
		return NULL;

	pci_dev = FUNC2(dev);
	return (struct amd_mp2_dev *)FUNC1(pci_dev);
}