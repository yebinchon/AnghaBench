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
typedef  int u8 ;
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct k8temp_data {int swap_core_select; int temp_offset; int sensorsp; int /*<<< orphan*/  update_lock; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int x86_model; int x86_stepping; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  REG_TEMP ; 
 int SEL_CORE ; 
 int SEL_PLACE ; 
 TYPE_1__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,char*,struct k8temp_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct k8temp_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  k8temp_chip_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *pdev,
				  const struct pci_device_id *id)
{
	u8 scfg;
	u32 temp;
	u8 model, stepping;
	struct k8temp_data *data;
	struct device *hwmon_dev;

	data = FUNC4(&pdev->dev, sizeof(struct k8temp_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	model = boot_cpu_data.x86_model;
	stepping = boot_cpu_data.x86_stepping;

	/* feature available since SH-C0, exclude older revisions */
	if ((model == 4 && stepping == 0) ||
	    (model == 5 && stepping <= 1))
		return -ENODEV;

	/*
	 * AMD NPT family 0fh, i.e. RevF and RevG:
	 * meaning of SEL_CORE bit is inverted
	 */
	if (model >= 0x40) {
		data->swap_core_select = 1;
		FUNC2(&pdev->dev,
			 "Temperature readouts might be wrong - check erratum #141\n");
	}

	/*
	 * RevG desktop CPUs (i.e. no socket S1G1 or ASB1 parts) need
	 * additional offset, otherwise reported temperature is below
	 * ambient temperature
	 */
	if (FUNC5(model))
		data->temp_offset = 21000;

	FUNC7(pdev, REG_TEMP, &scfg);
	scfg &= ~(SEL_PLACE | SEL_CORE);	/* Select sensor 0, core0 */
	FUNC9(pdev, REG_TEMP, scfg);
	FUNC7(pdev, REG_TEMP, &scfg);

	if (scfg & (SEL_PLACE | SEL_CORE)) {
		FUNC1(&pdev->dev, "Configuration bit(s) stuck at 1!\n");
		return -ENODEV;
	}

	scfg |= (SEL_PLACE | SEL_CORE);
	FUNC9(pdev, REG_TEMP, scfg);

	/* now we know if we can change core and/or sensor */
	FUNC7(pdev, REG_TEMP, &data->sensorsp);

	if (data->sensorsp & SEL_PLACE) {
		scfg &= ~SEL_CORE;	/* Select sensor 1, core0 */
		FUNC9(pdev, REG_TEMP, scfg);
		FUNC8(pdev, REG_TEMP, &temp);
		scfg |= SEL_CORE;	/* prepare for next selection */
		if (!((temp >> 16) & 0xff)) /* if temp is 0 -49C is unlikely */
			data->sensorsp &= ~SEL_PLACE;
	}

	if (data->sensorsp & SEL_CORE) {
		scfg &= ~SEL_PLACE;	/* Select sensor 0, core1 */
		FUNC9(pdev, REG_TEMP, scfg);
		FUNC8(pdev, REG_TEMP, &temp);
		if (!((temp >> 16) & 0xff)) /* if temp is 0 -49C is unlikely */
			data->sensorsp &= ~SEL_CORE;
	}

	FUNC6(&data->update_lock);

	hwmon_dev = FUNC3(&pdev->dev,
							 "k8temp",
							 data,
							 &k8temp_chip_info,
							 NULL);

	return FUNC0(hwmon_dev);
}