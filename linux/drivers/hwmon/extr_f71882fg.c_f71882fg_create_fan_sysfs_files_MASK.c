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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct f71882fg_data {int type; int pwm_enable; int* pwm_auto_point_mapping; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
#define  f71808a 137 
#define  f71808e 136 
#define  f71858fg 135 
#define  f71862fg 134 
 int /*<<< orphan*/ ** f71862fg_auto_pwm_attr ; 
#define  f71869 133 
 int /*<<< orphan*/ ** f71869_auto_pwm_attr ; 
#define  f71869a 132 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 scalar_t__* f71882fg_fan_has_beep ; 
 int FUNC6 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
#define  f71889a 131 
#define  f71889ed 130 
#define  f71889fg 129 
#define  f8000 128 
 int /*<<< orphan*/ ** f8000_auto_pwm_attr ; 
 int /*<<< orphan*/ ** fxxxx_auto_pwm_attr ; 
 int /*<<< orphan*/ ** fxxxx_fan_attr ; 
 int /*<<< orphan*/ * fxxxx_fan_beep_attr ; 
 struct f71882fg_data* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(
	struct platform_device *pdev, int idx)
{
	struct f71882fg_data *data = FUNC7(pdev);
	int err;

	/* Sanity check the pwm setting */
	err = 0;
	switch (data->type) {
	case f71858fg:
		if (((data->pwm_enable >> (idx * 2)) & 3) == 3)
			err = 1;
		break;
	case f71862fg:
		if (((data->pwm_enable >> (idx * 2)) & 1) != 1)
			err = 1;
		break;
	case f8000:
		if (idx == 2)
			err = data->pwm_enable & 0x20;
		break;
	default:
		break;
	}
	if (err) {
		FUNC2(&pdev->dev,
			"Invalid (reserved) pwm settings: 0x%02x, "
			"skipping fan %d\n",
			(data->pwm_enable >> (idx * 2)) & 3, idx + 1);
		return 0; /* This is a non fatal condition */
	}

	err = FUNC5(pdev, &fxxxx_fan_attr[idx][0],
					  FUNC0(fxxxx_fan_attr[0]));
	if (err)
		return err;

	if (f71882fg_fan_has_beep[data->type]) {
		err = FUNC5(pdev,
						  &fxxxx_fan_beep_attr[idx],
						  1);
		if (err)
			return err;
	}

	FUNC3(&pdev->dev, "Fan: %d is in %s mode\n", idx + 1,
		 (data->pwm_enable & (1 << (2 * idx))) ? "duty-cycle" : "RPM");

	/* Check for unsupported auto pwm settings */
	switch (data->type) {
	case f71808e:
	case f71808a:
	case f71869:
	case f71869a:
	case f71889fg:
	case f71889ed:
	case f71889a:
		data->pwm_auto_point_mapping[idx] =
			FUNC6(data, FUNC1(idx));
		if ((data->pwm_auto_point_mapping[idx] & 0x80) ||
		    (data->pwm_auto_point_mapping[idx] & 3) == 0) {
			FUNC4(&pdev->dev,
				 "Auto pwm controlled by raw digital "
				 "data, disabling pwm auto_point "
				 "sysfs attributes for fan %d\n", idx + 1);
			return 0; /* This is a non fatal condition */
		}
		break;
	default:
		break;
	}

	switch (data->type) {
	case f71862fg:
		err = FUNC5(pdev,
					&f71862fg_auto_pwm_attr[idx][0],
					FUNC0(f71862fg_auto_pwm_attr[0]));
		break;
	case f71808e:
	case f71869:
		err = FUNC5(pdev,
					&f71869_auto_pwm_attr[idx][0],
					FUNC0(f71869_auto_pwm_attr[0]));
		break;
	case f8000:
		err = FUNC5(pdev,
					&f8000_auto_pwm_attr[idx][0],
					FUNC0(f8000_auto_pwm_attr[0]));
		break;
	default:
		err = FUNC5(pdev,
					&fxxxx_auto_pwm_attr[idx][0],
					FUNC0(fxxxx_auto_pwm_attr[0]));
	}

	return err;
}