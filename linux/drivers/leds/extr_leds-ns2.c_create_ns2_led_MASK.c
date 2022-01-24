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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  brightness_set_blocking; int /*<<< orphan*/  groups; int /*<<< orphan*/  flags; int /*<<< orphan*/ * blink_set; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct ns2_led_data {int can_sleep; int sata; TYPE_1__ cdev; int /*<<< orphan*/  num_modes; int /*<<< orphan*/  modval; int /*<<< orphan*/  slow; int /*<<< orphan*/  cmd; int /*<<< orphan*/  rw_lock; } ;
struct ns2_led {int /*<<< orphan*/  num_modes; int /*<<< orphan*/  modval; int /*<<< orphan*/  slow; int /*<<< orphan*/  cmd; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
typedef  enum ns2_led_modes { ____Placeholder_ns2_led_modes } ns2_led_modes ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int NS_V2_LED_OFF ; 
 int NS_V2_LED_SATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (struct ns2_led_data*,int*) ; 
 int /*<<< orphan*/  ns2_led_groups ; 
 int /*<<< orphan*/  ns2_led_set ; 
 int /*<<< orphan*/  ns2_led_set_blocking ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct platform_device *pdev, struct ns2_led_data *led_dat,
	       const struct ns2_led *template)
{
	int ret;
	enum ns2_led_modes mode;

	ret = FUNC1(&pdev->dev, template->cmd,
			FUNC3(template->cmd) ?
			GPIOF_OUT_INIT_HIGH : GPIOF_OUT_INIT_LOW,
			template->name);
	if (ret) {
		FUNC0(&pdev->dev, "%s: failed to setup command GPIO\n",
			template->name);
		return ret;
	}

	ret = FUNC1(&pdev->dev, template->slow,
			FUNC3(template->slow) ?
			GPIOF_OUT_INIT_HIGH : GPIOF_OUT_INIT_LOW,
			template->name);
	if (ret) {
		FUNC0(&pdev->dev, "%s: failed to setup slow GPIO\n",
			template->name);
		return ret;
	}

	FUNC6(&led_dat->rw_lock);

	led_dat->cdev.name = template->name;
	led_dat->cdev.default_trigger = template->default_trigger;
	led_dat->cdev.blink_set = NULL;
	led_dat->cdev.flags |= LED_CORE_SUSPENDRESUME;
	led_dat->cdev.groups = ns2_led_groups;
	led_dat->cmd = template->cmd;
	led_dat->slow = template->slow;
	led_dat->can_sleep = FUNC2(led_dat->cmd) |
				FUNC2(led_dat->slow);
	if (led_dat->can_sleep)
		led_dat->cdev.brightness_set_blocking = ns2_led_set_blocking;
	else
		led_dat->cdev.brightness_set = ns2_led_set;
	led_dat->modval = template->modval;
	led_dat->num_modes = template->num_modes;

	ret = FUNC5(led_dat, &mode);
	if (ret < 0)
		return ret;

	/* Set LED initial state. */
	led_dat->sata = (mode == NS_V2_LED_SATA) ? 1 : 0;
	led_dat->cdev.brightness =
		(mode == NS_V2_LED_OFF) ? LED_OFF : LED_FULL;

	ret = FUNC4(&pdev->dev, &led_dat->cdev);
	if (ret < 0)
		return ret;

	return 0;
}