#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int mode; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_2__ attr; int /*<<< orphan*/  show; int /*<<< orphan*/  store; } ;
struct TYPE_6__ {int index; TYPE_3__ dev_attr; } ;
struct i5k_device_attribute {TYPE_1__ s_attr; int /*<<< orphan*/  name; } ;
struct i5k_amb_data {int* amb_present; int num_attrs; struct i5k_device_attribute* attrs; int /*<<< orphan*/  hwmon_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMB_SYSFS_NAME_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KNOBS_PER_AMB ; 
 int MAX_MEM_CHANNELS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int REAL_MAX_AMBS_PER_CHANNEL ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ dev_attr_name ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i5k_device_attribute*) ; 
 struct i5k_device_attribute* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i5k_amb_data* FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  show_amb_alarm ; 
 int /*<<< orphan*/  show_amb_max ; 
 int /*<<< orphan*/  show_amb_mid ; 
 int /*<<< orphan*/  show_amb_min ; 
 int /*<<< orphan*/  show_amb_temp ; 
 int /*<<< orphan*/  show_label ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  store_amb_max ; 
 int /*<<< orphan*/  store_amb_mid ; 
 int /*<<< orphan*/  store_amb_min ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int i, j, k, d = 0;
	u16 c;
	int res = 0;
	int num_ambs = 0;
	struct i5k_amb_data *data = FUNC10(pdev);

	/* Count the number of AMBs found */
	/* ignore the high-order bit, see "Ugly hack" comment above */
	for (i = 0; i < MAX_MEM_CHANNELS; i++)
		num_ambs += FUNC6(data->amb_present[i] & 0x7fff);

	/* Set up sysfs stuff */
	data->attrs = FUNC9(FUNC3(num_ambs, KNOBS_PER_AMB,
					  sizeof(*data->attrs)),
			      GFP_KERNEL);
	if (!data->attrs)
		return -ENOMEM;
	data->num_attrs = 0;

	for (i = 0; i < MAX_MEM_CHANNELS; i++) {
		c = data->amb_present[i];
		for (j = 0; j < REAL_MAX_AMBS_PER_CHANNEL; j++, c >>= 1) {
			struct i5k_device_attribute *iattr;

			k = FUNC2(i, j);
			if (!(c & 0x1))
				continue;
			d++;

			/* sysfs label */
			iattr = data->attrs + data->num_attrs;
			FUNC11(iattr->name, AMB_SYSFS_NAME_LEN,
				 "temp%d_label", d);
			iattr->s_attr.dev_attr.attr.name = iattr->name;
			iattr->s_attr.dev_attr.attr.mode = 0444;
			iattr->s_attr.dev_attr.show = show_label;
			iattr->s_attr.index = k;
			FUNC12(&iattr->s_attr.dev_attr.attr);
			res = FUNC4(&pdev->dev,
						 &iattr->s_attr.dev_attr);
			if (res)
				goto exit_remove;
			data->num_attrs++;

			/* Temperature sysfs knob */
			iattr = data->attrs + data->num_attrs;
			FUNC11(iattr->name, AMB_SYSFS_NAME_LEN,
				 "temp%d_input", d);
			iattr->s_attr.dev_attr.attr.name = iattr->name;
			iattr->s_attr.dev_attr.attr.mode = 0444;
			iattr->s_attr.dev_attr.show = show_amb_temp;
			iattr->s_attr.index = k;
			FUNC12(&iattr->s_attr.dev_attr.attr);
			res = FUNC4(&pdev->dev,
						 &iattr->s_attr.dev_attr);
			if (res)
				goto exit_remove;
			data->num_attrs++;

			/* Temperature min sysfs knob */
			iattr = data->attrs + data->num_attrs;
			FUNC11(iattr->name, AMB_SYSFS_NAME_LEN,
				 "temp%d_min", d);
			iattr->s_attr.dev_attr.attr.name = iattr->name;
			iattr->s_attr.dev_attr.attr.mode = 0644;
			iattr->s_attr.dev_attr.show = show_amb_min;
			iattr->s_attr.dev_attr.store = store_amb_min;
			iattr->s_attr.index = k;
			FUNC12(&iattr->s_attr.dev_attr.attr);
			res = FUNC4(&pdev->dev,
						 &iattr->s_attr.dev_attr);
			if (res)
				goto exit_remove;
			data->num_attrs++;

			/* Temperature mid sysfs knob */
			iattr = data->attrs + data->num_attrs;
			FUNC11(iattr->name, AMB_SYSFS_NAME_LEN,
				 "temp%d_mid", d);
			iattr->s_attr.dev_attr.attr.name = iattr->name;
			iattr->s_attr.dev_attr.attr.mode = 0644;
			iattr->s_attr.dev_attr.show = show_amb_mid;
			iattr->s_attr.dev_attr.store = store_amb_mid;
			iattr->s_attr.index = k;
			FUNC12(&iattr->s_attr.dev_attr.attr);
			res = FUNC4(&pdev->dev,
						 &iattr->s_attr.dev_attr);
			if (res)
				goto exit_remove;
			data->num_attrs++;

			/* Temperature max sysfs knob */
			iattr = data->attrs + data->num_attrs;
			FUNC11(iattr->name, AMB_SYSFS_NAME_LEN,
				 "temp%d_max", d);
			iattr->s_attr.dev_attr.attr.name = iattr->name;
			iattr->s_attr.dev_attr.attr.mode = 0644;
			iattr->s_attr.dev_attr.show = show_amb_max;
			iattr->s_attr.dev_attr.store = store_amb_max;
			iattr->s_attr.index = k;
			FUNC12(&iattr->s_attr.dev_attr.attr);
			res = FUNC4(&pdev->dev,
						 &iattr->s_attr.dev_attr);
			if (res)
				goto exit_remove;
			data->num_attrs++;

			/* Temperature alarm sysfs knob */
			iattr = data->attrs + data->num_attrs;
			FUNC11(iattr->name, AMB_SYSFS_NAME_LEN,
				 "temp%d_alarm", d);
			iattr->s_attr.dev_attr.attr.name = iattr->name;
			iattr->s_attr.dev_attr.attr.mode = 0444;
			iattr->s_attr.dev_attr.show = show_amb_alarm;
			iattr->s_attr.index = k;
			FUNC12(&iattr->s_attr.dev_attr.attr);
			res = FUNC4(&pdev->dev,
						 &iattr->s_attr.dev_attr);
			if (res)
				goto exit_remove;
			data->num_attrs++;
		}
	}

	res = FUNC4(&pdev->dev, &dev_attr_name);
	if (res)
		goto exit_remove;

	data->hwmon_dev = FUNC7(&pdev->dev);
	if (FUNC0(data->hwmon_dev)) {
		res = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return res;

exit_remove:
	FUNC5(&pdev->dev, &dev_attr_name);
	for (i = 0; i < data->num_attrs; i++)
		FUNC5(&pdev->dev, &data->attrs[i].s_attr.dev_attr);
	FUNC8(data->attrs);

	return res;
}