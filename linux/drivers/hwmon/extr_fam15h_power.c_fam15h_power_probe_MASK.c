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
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct fam15h_power_data {int /*<<< orphan*/ ** groups; int /*<<< orphan*/  group; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,char*,struct fam15h_power_data*,int /*<<< orphan*/ **) ; 
 struct fam15h_power_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,struct fam15h_power_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pdev,
			      const struct pci_device_id *id)
{
	struct fam15h_power_data *data;
	struct device *dev = &pdev->dev;
	struct device *hwmon_dev;
	int ret;

	/*
	 * though we ignore every other northbridge, we still have to
	 * do the tweaking on _each_ node in MCM processors as the counters
	 * are working hand-in-hand
	 */
	FUNC5(pdev);

	if (!FUNC4(pdev))
		return -ENODEV;

	data = FUNC2(dev, sizeof(struct fam15h_power_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC3(pdev, data);
	if (ret)
		return ret;

	data->pdev = pdev;

	data->groups[0] = &data->group;

	hwmon_dev = FUNC1(dev, "fam15h_power",
							   data,
							   &data->groups[0]);
	return FUNC0(hwmon_dev);
}