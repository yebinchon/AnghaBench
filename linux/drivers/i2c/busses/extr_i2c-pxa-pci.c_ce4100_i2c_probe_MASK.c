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
struct pci_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct ce4100_devices {int /*<<< orphan*/ * pdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ce4100_devices*) ; 
 struct ce4100_devices* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct ce4100_devices*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev,
		const struct pci_device_id *ent)
{
	int ret;
	int i;
	struct ce4100_devices *sds;

	ret = FUNC8(dev);
	if (ret)
		return ret;

	if (!dev->dev.of_node) {
		FUNC4(&dev->dev, "Missing device tree node.\n");
		return -EINVAL;
	}
	sds = FUNC6(sizeof(*sds), GFP_KERNEL);
	if (!sds) {
		ret = -ENOMEM;
		goto err_mem;
	}

	for (i = 0; i < FUNC0(sds->pdev); i++) {
		sds->pdev[i] = FUNC3(dev, i);
		if (FUNC1(sds->pdev[i])) {
			ret = FUNC2(sds->pdev[i]);
			while (--i >= 0)
				FUNC10(sds->pdev[i]);
			goto err_dev_add;
		}
	}
	FUNC9(dev, sds);
	return 0;

err_dev_add:
	FUNC5(sds);
err_mem:
	FUNC7(dev);
	return ret;
}