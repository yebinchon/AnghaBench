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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct k8temp_data {int swap_core_select; long temp_offset; int /*<<< orphan*/  update_lock; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int /*<<< orphan*/  REG_TEMP ; 
 int SEL_CORE ; 
 int SEL_PLACE ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 struct k8temp_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct device *dev, enum hwmon_sensor_types type,
	    u32 attr, int channel, long *val)
{
	struct k8temp_data *data = FUNC1(dev);
	struct pci_dev *pdev = FUNC7(dev->parent);
	int core, place;
	u32 temp;
	u8 tmp;

	core = (channel >> 1) & 1;
	place = channel & 1;

	core ^= data->swap_core_select;

	FUNC2(&data->update_lock);
	FUNC4(pdev, REG_TEMP, &tmp);
	tmp &= ~(SEL_PLACE | SEL_CORE);
	if (core)
		tmp |= SEL_CORE;
	if (place)
		tmp |= SEL_PLACE;
	FUNC6(pdev, REG_TEMP, tmp);
	FUNC5(pdev, REG_TEMP, &temp);
	FUNC3(&data->update_lock);

	*val = FUNC0(temp) + data->temp_offset;

	return 0;
}