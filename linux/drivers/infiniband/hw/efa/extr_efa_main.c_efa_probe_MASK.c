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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct efa_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct efa_dev*) ; 
 int FUNC1 (struct efa_dev*) ; 
 int FUNC2 (struct efa_dev*) ; 
 struct efa_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct efa_dev *dev;
	int err;

	dev = FUNC3(pdev);
	if (FUNC0(dev))
		return FUNC1(dev);

	err = FUNC2(dev);
	if (err)
		goto err_remove_device;

	return 0;

err_remove_device:
	FUNC4(pdev);
	return err;
}