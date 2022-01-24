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
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  REG_TSFSC ; 
 int /*<<< orphan*/  REG_TSTIMER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i5500_temp_groups ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev,
			    const struct pci_device_id *id)
{
	int err;
	struct device *hwmon_dev;
	u32 tstimer;
	s8 tsfsc;

	err = FUNC4(pdev);
	if (err) {
		FUNC1(&pdev->dev, "Failed to enable device\n");
		return err;
	}

	FUNC5(pdev, REG_TSFSC, &tsfsc);
	FUNC6(pdev, REG_TSTIMER, &tstimer);
	if (tsfsc == 0x7F && tstimer == 0x07D30D40) {
		FUNC2(&pdev->dev, "Sensor seems to be disabled\n");
		return -ENODEV;
	}

	hwmon_dev = FUNC3(&pdev->dev,
							   "intel5500", NULL,
							   i5500_temp_groups);
	return FUNC0(hwmon_dev);
}