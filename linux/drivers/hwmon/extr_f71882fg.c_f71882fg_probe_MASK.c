#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct f71882fg_sio_data {size_t type; } ;
struct f71882fg_data {size_t type; int temp_start; int temp_config; int auto_point_temp_signed; int /*<<< orphan*/ * hwmon_dev; void* pwm_enable; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int F71882FG_FAN_NEG_TEMP_EN ; 
 int F71882FG_FAN_PROG_SEL ; 
 int F71882FG_MAX_INS ; 
 int /*<<< orphan*/  F71882FG_REG_FAN_FAULT_T ; 
 int /*<<< orphan*/  F71882FG_REG_PWM_ENABLE ; 
 int /*<<< orphan*/  F71882FG_REG_START ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_CONFIG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_name ; 
 struct f71882fg_sio_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct f71882fg_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
#define  f71808a 137 
 int /*<<< orphan*/ * f71808a_fan3_attr ; 
#define  f71808e 136 
#define  f71858fg 135 
 int /*<<< orphan*/ * f71858fg_temp_attr ; 
#define  f71869 134 
#define  f71869a 133 
 int FUNC7 (struct platform_device*,int) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 scalar_t__** f71882fg_has_in ; 
 scalar_t__* f71882fg_has_in1_alarm ; 
 int* f71882fg_nr_fans ; 
 int* f71882fg_nr_temps ; 
 void* FUNC9 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 scalar_t__* f71882fg_temp_has_beep ; 
 int /*<<< orphan*/  FUNC11 (struct f71882fg_data*,int /*<<< orphan*/ ,int) ; 
#define  f71889a 132 
#define  f71889ed 131 
#define  f71889fg 130 
#define  f8000 129 
 int /*<<< orphan*/ * f8000_fan_attr ; 
 int /*<<< orphan*/ * f8000_temp_attr ; 
 int /*<<< orphan*/ ** f81866_temp_beep_attr ; 
#define  f81866a 128 
 int /*<<< orphan*/ * fxxxx_in1_alarm_attr ; 
 TYPE_2__* fxxxx_in_attr ; 
 int /*<<< orphan*/ ** fxxxx_temp_attr ; 
 int /*<<< orphan*/ ** fxxxx_temp_beep_attr ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct f71882fg_data*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct f71882fg_data *data;
	struct f71882fg_sio_data *sio_data = FUNC3(&pdev->dev);
	int nr_fans = f71882fg_nr_fans[sio_data->type];
	int nr_temps = f71882fg_nr_temps[sio_data->type];
	int err, i;
	int size;
	u8 start_reg, reg;

	data = FUNC6(&pdev->dev, sizeof(struct f71882fg_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->addr = FUNC14(pdev, IORESOURCE_IO, 0)->start;
	data->type = sio_data->type;
	data->temp_start =
	    (data->type == f71858fg || data->type == f8000 ||
		data->type == f81866a) ? 0 : 1;
	FUNC13(&data->update_lock);
	FUNC15(pdev, data);

	start_reg = FUNC9(data, F71882FG_REG_START);
	if (start_reg & 0x04) {
		FUNC4(&pdev->dev, "Hardware monitor is powered down\n");
		return -ENODEV;
	}
	if (!(start_reg & 0x03)) {
		FUNC4(&pdev->dev, "Hardware monitoring not activated\n");
		return -ENODEV;
	}

	/* Register sysfs interface files */
	err = FUNC5(&pdev->dev, &dev_attr_name);
	if (err)
		goto exit_unregister_sysfs;

	if (start_reg & 0x01) {
		switch (data->type) {
		case f71858fg:
			data->temp_config =
				FUNC9(data, F71882FG_REG_TEMP_CONFIG);
			if (data->temp_config & 0x10)
				/*
				 * The f71858fg temperature alarms behave as
				 * the f8000 alarms in this mode
				 */
				err = FUNC8(pdev,
					f8000_temp_attr,
					FUNC0(f8000_temp_attr));
			else
				err = FUNC8(pdev,
					f71858fg_temp_attr,
					FUNC0(f71858fg_temp_attr));
			break;
		case f8000:
			err = FUNC8(pdev,
					f8000_temp_attr,
					FUNC0(f8000_temp_attr));
			break;
		case f81866a:
			err = FUNC8(pdev,
					f71858fg_temp_attr,
					FUNC0(f71858fg_temp_attr));
			break;
		default:
			err = FUNC8(pdev,
				&fxxxx_temp_attr[0][0],
				FUNC0(fxxxx_temp_attr[0]) * nr_temps);
		}
		if (err)
			goto exit_unregister_sysfs;

		if (f71882fg_temp_has_beep[data->type]) {
			if (data->type == f81866a) {
				size = FUNC0(f81866_temp_beep_attr[0]);
				err = FUNC8(pdev,
						&f81866_temp_beep_attr[0][0],
						size * nr_temps);

			} else {
				size = FUNC0(fxxxx_temp_beep_attr[0]);
				err = FUNC8(pdev,
						&fxxxx_temp_beep_attr[0][0],
						size * nr_temps);
			}
			if (err)
				goto exit_unregister_sysfs;
		}

		for (i = 0; i < F71882FG_MAX_INS; i++) {
			if (f71882fg_has_in[data->type][i]) {
				err = FUNC5(&pdev->dev,
						&fxxxx_in_attr[i].dev_attr);
				if (err)
					goto exit_unregister_sysfs;
			}
		}
		if (f71882fg_has_in1_alarm[data->type]) {
			err = FUNC8(pdev,
					fxxxx_in1_alarm_attr,
					FUNC0(fxxxx_in1_alarm_attr));
			if (err)
				goto exit_unregister_sysfs;
		}
	}

	if (start_reg & 0x02) {
		switch (data->type) {
		case f71808e:
		case f71808a:
		case f71869:
		case f71869a:
			/* These always have signed auto point temps */
			data->auto_point_temp_signed = 1;
			/* Fall through - to select correct fan/pwm reg bank! */
		case f71889fg:
		case f71889ed:
		case f71889a:
			reg = FUNC9(data, F71882FG_REG_FAN_FAULT_T);
			if (reg & F71882FG_FAN_NEG_TEMP_EN)
				data->auto_point_temp_signed = 1;
			/* Ensure banked pwm registers point to right bank */
			reg &= ~F71882FG_FAN_PROG_SEL;
			FUNC11(data, F71882FG_REG_FAN_FAULT_T, reg);
			break;
		default:
			break;
		}

		data->pwm_enable =
			FUNC9(data, F71882FG_REG_PWM_ENABLE);

		for (i = 0; i < nr_fans; i++) {
			err = FUNC7(pdev, i);
			if (err)
				goto exit_unregister_sysfs;
		}

		/* Some types have 1 extra fan with limited functionality */
		switch (data->type) {
		case f71808a:
			err = FUNC8(pdev,
					f71808a_fan3_attr,
					FUNC0(f71808a_fan3_attr));
			break;
		case f8000:
			err = FUNC8(pdev,
					f8000_fan_attr,
					FUNC0(f8000_fan_attr));
			break;
		default:
			break;
		}
		if (err)
			goto exit_unregister_sysfs;
	}

	data->hwmon_dev = FUNC12(&pdev->dev);
	if (FUNC1(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		data->hwmon_dev = NULL;
		goto exit_unregister_sysfs;
	}

	return 0;

exit_unregister_sysfs:
	FUNC10(pdev); /* Will unregister the sysfs files for us */
	return err; /* f71882fg_remove() also frees our data */
}