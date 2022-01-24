#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pwm_args {scalar_t__ period; } ;
struct led_pwm_priv {size_t num_leds; struct led_pwm_data* leds; } ;
struct TYPE_3__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  (* brightness_set_blocking ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct led_pwm_data {scalar_t__ period; TYPE_1__ cdev; int /*<<< orphan*/  pwm; int /*<<< orphan*/  active_low; } ;
struct led_pwm {scalar_t__ pwm_period_ns; int /*<<< orphan*/  name; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  active_low; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 int /*<<< orphan*/  LED_OFF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct fwnode_handle*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pwm_args*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct led_pwm_priv *priv,
		       struct led_pwm *led, struct fwnode_handle *fwnode)
{
	struct led_pwm_data *led_data = &priv->leds[priv->num_leds];
	struct pwm_args pargs;
	int ret;

	led_data->active_low = led->active_low;
	led_data->cdev.name = led->name;
	led_data->cdev.default_trigger = led->default_trigger;
	led_data->cdev.brightness = LED_OFF;
	led_data->cdev.max_brightness = led->max_brightness;
	led_data->cdev.flags = LED_CORE_SUSPENDRESUME;

	if (fwnode)
		led_data->pwm = FUNC3(dev, fwnode, NULL);
	else
		led_data->pwm = FUNC5(dev, led->name);
	if (FUNC0(led_data->pwm)) {
		ret = FUNC1(led_data->pwm);
		if (ret != -EPROBE_DEFER)
			FUNC2(dev, "unable to request PWM for %s: %d\n",
				led->name, ret);
		return ret;
	}

	led_data->cdev.brightness_set_blocking = led_pwm_set;

	/*
	 * FIXME: pwm_apply_args() should be removed when switching to the
	 * atomic PWM API.
	 */
	FUNC7(led_data->pwm);

	FUNC8(led_data->pwm, &pargs);

	led_data->period = pargs.period;
	if (!led_data->period && (led->pwm_period_ns > 0))
		led_data->period = led->pwm_period_ns;

	ret = FUNC4(dev, &led_data->cdev);
	if (ret == 0) {
		priv->num_leds++;
		FUNC6(&led_data->cdev, led_data->cdev.brightness);
	} else {
		FUNC2(dev, "failed to register PWM led for %s: %d\n",
			led->name, ret);
	}

	return ret;
}