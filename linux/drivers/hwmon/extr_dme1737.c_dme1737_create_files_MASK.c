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
struct dme1737_data {int has_features; int config; int /*<<< orphan*/ * pwm_config; int /*<<< orphan*/  client; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int HAS_IN7 ; 
 int FUNC2 (int) ; 
 int HAS_PWM_MIN ; 
 int HAS_TEMP_OFFSET ; 
 int HAS_VID ; 
 int HAS_ZONE3 ; 
 int HAS_ZONE_HYST ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 TYPE_1__ dev_attr_name ; 
 struct dme1737_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/ ** dme1737_auto_pwm_min_attr ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * dme1737_fan_group ; 
 int /*<<< orphan*/  dme1737_group ; 
 int /*<<< orphan*/  dme1737_in7_group ; 
 int /*<<< orphan*/ ** dme1737_pwm_chmod_attr ; 
 int /*<<< orphan*/ * dme1737_pwm_chmod_group ; 
 int /*<<< orphan*/ * dme1737_pwm_group ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  dme1737_temp_offset_group ; 
 int /*<<< orphan*/  dme1737_vid_group ; 
 int /*<<< orphan*/  dme1737_zone3_chmod_group ; 
 int /*<<< orphan*/  dme1737_zone3_group ; 
 int /*<<< orphan*/  dme1737_zone_chmod_group ; 
 int /*<<< orphan*/  dme1737_zone_hyst_group ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct dme1737_data *data = FUNC4(dev);
	int err, ix;

	/* Create a name attribute for ISA devices */
	if (!data->client) {
		err = FUNC9(&dev->kobj, &dev_attr_name.attr);
		if (err)
			goto exit;
	}

	/* Create standard sysfs attributes */
	err = FUNC10(&dev->kobj, &dme1737_group);
	if (err)
		goto exit_remove;

	/* Create chip-dependent sysfs attributes */
	if (data->has_features & HAS_TEMP_OFFSET) {
		err = FUNC10(&dev->kobj,
					 &dme1737_temp_offset_group);
		if (err)
			goto exit_remove;
	}
	if (data->has_features & HAS_VID) {
		err = FUNC10(&dev->kobj, &dme1737_vid_group);
		if (err)
			goto exit_remove;
	}
	if (data->has_features & HAS_ZONE3) {
		err = FUNC10(&dev->kobj, &dme1737_zone3_group);
		if (err)
			goto exit_remove;
	}
	if (data->has_features & HAS_ZONE_HYST) {
		err = FUNC10(&dev->kobj, &dme1737_zone_hyst_group);
		if (err)
			goto exit_remove;
	}
	if (data->has_features & HAS_IN7) {
		err = FUNC10(&dev->kobj, &dme1737_in7_group);
		if (err)
			goto exit_remove;
	}

	/* Create fan sysfs attributes */
	for (ix = 0; ix < FUNC0(dme1737_fan_group); ix++) {
		if (data->has_features & FUNC1(ix)) {
			err = FUNC10(&dev->kobj,
						 &dme1737_fan_group[ix]);
			if (err)
				goto exit_remove;
		}
	}

	/* Create PWM sysfs attributes */
	for (ix = 0; ix < FUNC0(dme1737_pwm_group); ix++) {
		if (data->has_features & FUNC2(ix)) {
			err = FUNC10(&dev->kobj,
						 &dme1737_pwm_group[ix]);
			if (err)
				goto exit_remove;
			if ((data->has_features & HAS_PWM_MIN) && (ix < 3)) {
				err = FUNC9(&dev->kobj,
						dme1737_auto_pwm_min_attr[ix]);
				if (err)
					goto exit_remove;
			}
		}
	}

	/*
	 * Inform if the device is locked. Otherwise change the permissions of
	 * selected attributes from read-only to read-writeable.
	 */
	if (data->config & 0x02) {
		FUNC5(dev,
			 "Device is locked. Some attributes will be read-only.\n");
	} else {
		/* Change permissions of zone sysfs attributes */
		FUNC7(dev, &dme1737_zone_chmod_group,
				    S_IRUGO | S_IWUSR);

		/* Change permissions of chip-dependent sysfs attributes */
		if (data->has_features & HAS_TEMP_OFFSET) {
			FUNC7(dev, &dme1737_temp_offset_group,
					    S_IRUGO | S_IWUSR);
		}
		if (data->has_features & HAS_ZONE3) {
			FUNC7(dev, &dme1737_zone3_chmod_group,
					    S_IRUGO | S_IWUSR);
		}
		if (data->has_features & HAS_ZONE_HYST) {
			FUNC7(dev, &dme1737_zone_hyst_group,
					    S_IRUGO | S_IWUSR);
		}

		/* Change permissions of PWM sysfs attributes */
		for (ix = 0; ix < FUNC0(dme1737_pwm_chmod_group); ix++) {
			if (data->has_features & FUNC2(ix)) {
				FUNC7(dev,
						&dme1737_pwm_chmod_group[ix],
						S_IRUGO | S_IWUSR);
				if ((data->has_features & HAS_PWM_MIN) &&
				    ix < 3) {
					FUNC6(dev,
						dme1737_auto_pwm_min_attr[ix],
						S_IRUGO | S_IWUSR);
				}
			}
		}

		/* Change permissions of pwm[1-3] if in manual mode */
		for (ix = 0; ix < 3; ix++) {
			if ((data->has_features & FUNC2(ix)) &&
			    (FUNC3(data->pwm_config[ix]) == 1)) {
				FUNC6(dev,
						dme1737_pwm_chmod_attr[ix],
						S_IRUGO | S_IWUSR);
			}
		}
	}

	return 0;

exit_remove:
	FUNC8(dev);
exit:
	return err;
}