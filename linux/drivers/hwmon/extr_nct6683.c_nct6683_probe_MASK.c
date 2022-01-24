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
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct nct6683_sio_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct nct6683_sio_data {size_t kind; int /*<<< orphan*/  sioreg; } ;
struct nct6683_data {size_t kind; int customer_id; struct attribute_group** groups; scalar_t__ temp_num; scalar_t__ have_fan; scalar_t__ in_num; scalar_t__ have_pwm; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  addr; int /*<<< orphan*/  sioreg; } ;
struct attribute_group {int dummy; } ;
typedef  int /*<<< orphan*/  build ;

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOREGION_LENGTH ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ FUNC0 (struct attribute_group*) ; 
#define  NCT6683_CUSTOMER_ID_INTEL 129 
#define  NCT6683_CUSTOMER_ID_MITAC 128 
 int /*<<< orphan*/  NCT6683_REG_BUILD_DAY ; 
 int /*<<< orphan*/  NCT6683_REG_BUILD_MONTH ; 
 int /*<<< orphan*/  NCT6683_REG_BUILD_YEAR ; 
 int /*<<< orphan*/  NCT6683_REG_CUSTOMER_ID ; 
 int /*<<< orphan*/  NCT6683_REG_VERSION_HI ; 
 int /*<<< orphan*/  NCT6683_REG_VERSION_LO ; 
 int FUNC1 (struct attribute_group*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ ,struct nct6683_data*,struct attribute_group**) ; 
 struct nct6683_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  force ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nct6683_chip_names ; 
 struct attribute_group* FUNC9 (struct device*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * nct6683_device_names ; 
 int /*<<< orphan*/  nct6683_fan_template_group ; 
 struct attribute_group nct6683_group_other ; 
 int /*<<< orphan*/  nct6683_in_template_group ; 
 int /*<<< orphan*/  FUNC10 (struct nct6683_data*) ; 
 int /*<<< orphan*/  nct6683_pwm_template_group ; 
 int /*<<< orphan*/  FUNC11 (struct nct6683_data*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct nct6683_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nct6683_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct nct6683_data*) ; 
 int /*<<< orphan*/  nct6683_temp_template_group ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct nct6683_data*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct nct6683_sio_data *sio_data = dev->platform_data;
	struct attribute_group *group;
	struct nct6683_data *data;
	struct device *hwmon_dev;
	struct resource *res;
	int groups = 0;
	char build[16];

	res = FUNC15(pdev, IORESOURCE_IO, 0);
	if (!FUNC6(dev, res->start, IOREGION_LENGTH, DRVNAME))
		return -EBUSY;

	data = FUNC5(dev, sizeof(struct nct6683_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->kind = sio_data->kind;
	data->sioreg = sio_data->sioreg;
	data->addr = res->start;
	FUNC8(&data->update_lock);
	FUNC16(pdev, data);

	data->customer_id = FUNC12(data, NCT6683_REG_CUSTOMER_ID);

	/* By default only instantiate driver if the customer ID is known */
	switch (data->customer_id) {
	case NCT6683_CUSTOMER_ID_INTEL:
		break;
	case NCT6683_CUSTOMER_ID_MITAC:
		break;
	default:
		if (!force)
			return -ENODEV;
	}

	FUNC10(data);
	FUNC13(data);
	FUNC14(data);

	/* Register sysfs hooks */

	if (data->have_pwm) {
		group = FUNC9(dev,
						  &nct6683_pwm_template_group,
						  FUNC7(data->have_pwm));
		if (FUNC0(group))
			return FUNC1(group);
		data->groups[groups++] = group;
	}

	if (data->in_num) {
		group = FUNC9(dev,
						  &nct6683_in_template_group,
						  data->in_num);
		if (FUNC0(group))
			return FUNC1(group);
		data->groups[groups++] = group;
	}

	if (data->have_fan) {
		group = FUNC9(dev,
						  &nct6683_fan_template_group,
						  FUNC7(data->have_fan));
		if (FUNC0(group))
			return FUNC1(group);
		data->groups[groups++] = group;
	}

	if (data->temp_num) {
		group = FUNC9(dev,
						  &nct6683_temp_template_group,
						  data->temp_num);
		if (FUNC0(group))
			return FUNC1(group);
		data->groups[groups++] = group;
	}
	data->groups[groups++] = &nct6683_group_other;

	if (data->customer_id == NCT6683_CUSTOMER_ID_INTEL)
		FUNC17(build, sizeof(build), "%02x/%02x/%02x",
			  FUNC11(data, NCT6683_REG_BUILD_MONTH),
			  FUNC11(data, NCT6683_REG_BUILD_DAY),
			  FUNC11(data, NCT6683_REG_BUILD_YEAR));
	else
		FUNC17(build, sizeof(build), "%02d/%02d/%02d",
			  FUNC11(data, NCT6683_REG_BUILD_MONTH),
			  FUNC11(data, NCT6683_REG_BUILD_DAY),
			  FUNC11(data, NCT6683_REG_BUILD_YEAR));

	FUNC3(dev, "%s EC firmware version %d.%d build %s\n",
		 nct6683_chip_names[data->kind],
		 FUNC11(data, NCT6683_REG_VERSION_HI),
		 FUNC11(data, NCT6683_REG_VERSION_LO),
		 build);

	hwmon_dev = FUNC4(dev,
			nct6683_device_names[data->kind], data, data->groups);
	return FUNC2(hwmon_dev);
}