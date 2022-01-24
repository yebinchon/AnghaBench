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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct f71882fg_data {size_t type; int temp_config; scalar_t__ hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int F71882FG_MAX_INS ; 
 int /*<<< orphan*/  F71882FG_REG_START ; 
 int /*<<< orphan*/  dev_attr_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  f71808a 134 
 int /*<<< orphan*/ * f71808a_fan3_attr ; 
#define  f71808e 133 
#define  f71858fg 132 
 int /*<<< orphan*/ * f71858fg_temp_attr ; 
#define  f71862fg 131 
 int /*<<< orphan*/ ** f71862fg_auto_pwm_attr ; 
#define  f71869 130 
 int /*<<< orphan*/ ** f71869_auto_pwm_attr ; 
 scalar_t__* f71882fg_fan_has_beep ; 
 scalar_t__** f71882fg_has_in ; 
 scalar_t__* f71882fg_has_in1_alarm ; 
 int* f71882fg_nr_fans ; 
 int* f71882fg_nr_temps ; 
 int FUNC2 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 scalar_t__* f71882fg_temp_has_beep ; 
#define  f8000 129 
 int /*<<< orphan*/ ** f8000_auto_pwm_attr ; 
 int /*<<< orphan*/ * f8000_fan_attr ; 
 int /*<<< orphan*/ * f8000_temp_attr ; 
 int /*<<< orphan*/ ** f81866_temp_beep_attr ; 
#define  f81866a 128 
 int /*<<< orphan*/ ** fxxxx_auto_pwm_attr ; 
 int /*<<< orphan*/ ** fxxxx_fan_attr ; 
 int /*<<< orphan*/ * fxxxx_fan_beep_attr ; 
 int /*<<< orphan*/ * fxxxx_in1_alarm_attr ; 
 TYPE_1__* fxxxx_in_attr ; 
 int /*<<< orphan*/ ** fxxxx_temp_attr ; 
 int /*<<< orphan*/ ** fxxxx_temp_beep_attr ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct f71882fg_data* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct f71882fg_data *data = FUNC5(pdev);
	int nr_fans = f71882fg_nr_fans[data->type];
	int nr_temps = f71882fg_nr_temps[data->type];
	int i;
	u8 start_reg = FUNC2(data, F71882FG_REG_START);

	if (data->hwmon_dev)
		FUNC4(data->hwmon_dev);

	FUNC1(&pdev->dev, &dev_attr_name);

	if (start_reg & 0x01) {
		switch (data->type) {
		case f71858fg:
			if (data->temp_config & 0x10)
				FUNC3(pdev,
					f8000_temp_attr,
					FUNC0(f8000_temp_attr));
			else
				FUNC3(pdev,
					f71858fg_temp_attr,
					FUNC0(f71858fg_temp_attr));
			break;
		case f8000:
			FUNC3(pdev,
					f8000_temp_attr,
					FUNC0(f8000_temp_attr));
			break;
		case f81866a:
			FUNC3(pdev,
					f71858fg_temp_attr,
					FUNC0(f71858fg_temp_attr));
			break;
		default:
			FUNC3(pdev,
				&fxxxx_temp_attr[0][0],
				FUNC0(fxxxx_temp_attr[0]) * nr_temps);
		}
		if (f71882fg_temp_has_beep[data->type]) {
			if (data->type == f81866a)
				FUNC3(pdev,
					&f81866_temp_beep_attr[0][0],
					FUNC0(f81866_temp_beep_attr[0])
						* nr_temps);
			else
				FUNC3(pdev,
					&fxxxx_temp_beep_attr[0][0],
					FUNC0(fxxxx_temp_beep_attr[0])
						* nr_temps);
		}

		for (i = 0; i < F71882FG_MAX_INS; i++) {
			if (f71882fg_has_in[data->type][i]) {
				FUNC1(&pdev->dev,
						&fxxxx_in_attr[i].dev_attr);
			}
		}
		if (f71882fg_has_in1_alarm[data->type]) {
			FUNC3(pdev,
					fxxxx_in1_alarm_attr,
					FUNC0(fxxxx_in1_alarm_attr));
		}
	}

	if (start_reg & 0x02) {
		FUNC3(pdev, &fxxxx_fan_attr[0][0],
				FUNC0(fxxxx_fan_attr[0]) * nr_fans);

		if (f71882fg_fan_has_beep[data->type]) {
			FUNC3(pdev,
					fxxxx_fan_beep_attr, nr_fans);
		}

		switch (data->type) {
		case f71808a:
			FUNC3(pdev,
				&fxxxx_auto_pwm_attr[0][0],
				FUNC0(fxxxx_auto_pwm_attr[0]) * nr_fans);
			FUNC3(pdev,
					f71808a_fan3_attr,
					FUNC0(f71808a_fan3_attr));
			break;
		case f71862fg:
			FUNC3(pdev,
				&f71862fg_auto_pwm_attr[0][0],
				FUNC0(f71862fg_auto_pwm_attr[0]) *
					nr_fans);
			break;
		case f71808e:
		case f71869:
			FUNC3(pdev,
				&f71869_auto_pwm_attr[0][0],
				FUNC0(f71869_auto_pwm_attr[0]) * nr_fans);
			break;
		case f8000:
			FUNC3(pdev,
					f8000_fan_attr,
					FUNC0(f8000_fan_attr));
			FUNC3(pdev,
				&f8000_auto_pwm_attr[0][0],
				FUNC0(f8000_auto_pwm_attr[0]) * nr_fans);
			break;
		default:
			FUNC3(pdev,
				&fxxxx_auto_pwm_attr[0][0],
				FUNC0(fxxxx_auto_pwm_attr[0]) * nr_fans);
		}
	}
	return 0;
}