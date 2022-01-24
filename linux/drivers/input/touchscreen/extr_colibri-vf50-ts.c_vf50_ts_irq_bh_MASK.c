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
struct vf50_touch_device {int min_pressure; int /*<<< orphan*/  ts_input; int /*<<< orphan*/  gpio_xm; int /*<<< orphan*/  gpio_yp; int /*<<< orphan*/ * channels; int /*<<< orphan*/  gpio_ym; int /*<<< orphan*/  gpio_xp; int /*<<< orphan*/  stop_touchscreen; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  COLI_PULLUP_MAX_DELAY_US ; 
 int /*<<< orphan*/  COLI_PULLUP_MIN_DELAY_US ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int VF_ADC_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vf50_touch_device*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *private)
{
	struct vf50_touch_device *vf50_ts = private;
	struct device *dev = &vf50_ts->pdev->dev;
	int val_x, val_y, val_z1, val_z2, val_p = 0;
	bool discard_val_on_start = true;

	/* Disable the touch detection plates */
	FUNC2(vf50_ts->gpio_ym, 0);

	/* Let the platform mux to default state in order to mux as ADC */
	FUNC6(dev);

	while (!vf50_ts->stop_touchscreen) {
		/* X-Direction */
		val_x = FUNC0(&vf50_ts->channels[0],
				vf50_ts->gpio_xp, vf50_ts->gpio_xm);
		if (val_x < 0)
			break;

		/* Y-Direction */
		val_y = FUNC0(&vf50_ts->channels[1],
				vf50_ts->gpio_yp, vf50_ts->gpio_ym);
		if (val_y < 0)
			break;

		/*
		 * Touch pressure
		 * Measure on XP/YM
		 */
		val_z1 = FUNC0(&vf50_ts->channels[2],
				vf50_ts->gpio_yp, vf50_ts->gpio_xm);
		if (val_z1 < 0)
			break;
		val_z2 = FUNC0(&vf50_ts->channels[3],
				vf50_ts->gpio_yp, vf50_ts->gpio_xm);
		if (val_z2 < 0)
			break;

		/* Validate signal (avoid calculation using noise) */
		if (val_z1 > 64 && val_x > 64) {
			/*
			 * Calculate resistance between the plates
			 * lower resistance means higher pressure
			 */
			int r_x = (1000 * val_x) / VF_ADC_MAX;

			val_p = (r_x * val_z2) / val_z1 - r_x;

		} else {
			val_p = 2000;
		}

		val_p = 2000 - val_p;
		FUNC1(dev,
			"Measured values: x: %d, y: %d, z1: %d, z2: %d, p: %d\n",
			val_x, val_y, val_z1, val_z2, val_p);

		/*
		 * If touch pressure is too low, stop measuring and reenable
		 * touch detection
		 */
		if (val_p < vf50_ts->min_pressure || val_p > 2000)
			break;

		/*
		 * The pressure may not be enough for the first x and the
		 * second y measurement, but, the pressure is ok when the
		 * driver is doing the third and fourth measurement. To
		 * take care of this, we drop the first measurement always.
		 */
		if (discard_val_on_start) {
			discard_val_on_start = false;
		} else {
			/*
			 * Report touch position and sleep for
			 * the next measurement.
			 */
			FUNC3(vf50_ts->ts_input,
					ABS_X, VF_ADC_MAX - val_x);
			FUNC3(vf50_ts->ts_input,
					ABS_Y, VF_ADC_MAX - val_y);
			FUNC3(vf50_ts->ts_input,
					ABS_PRESSURE, val_p);
			FUNC4(vf50_ts->ts_input, BTN_TOUCH, 1);
			FUNC5(vf50_ts->ts_input);
		}

		FUNC7(COLI_PULLUP_MIN_DELAY_US,
			     COLI_PULLUP_MAX_DELAY_US);
	}

	/* Report no more touch, re-enable touch detection */
	FUNC3(vf50_ts->ts_input, ABS_PRESSURE, 0);
	FUNC4(vf50_ts->ts_input, BTN_TOUCH, 0);
	FUNC5(vf50_ts->ts_input);

	FUNC8(vf50_ts);

	return IRQ_HANDLED;
}