#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct regmap {int dummy; } ;
struct TYPE_8__ {int (* brightness_get ) (TYPE_1__*) ;int max_brightness; int brightness; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  (* brightness_set ) (TYPE_1__*,int) ;void* default_trigger; } ;
struct pm8058_led {scalar_t__ ledtype; TYPE_1__ cdev; int /*<<< orphan*/  reg; struct regmap* map; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 int LED_OFF ; 
 scalar_t__ PM8058_LED_TYPE_COMMON ; 
 scalar_t__ PM8058_LED_TYPE_FLASH ; 
 scalar_t__ PM8058_LED_TYPE_KEYPAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 struct regmap* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pm8058_led* FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 void* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct pm8058_led *led;
	struct device_node *np = pdev->dev.of_node;
	int ret;
	struct regmap *map;
	const char *state;
	enum led_brightness maxbright;

	led = FUNC2(&pdev->dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	led->ledtype = (u32)(unsigned long)FUNC4(&pdev->dev);

	map = FUNC1(pdev->dev.parent, NULL);
	if (!map) {
		FUNC0(&pdev->dev, "Parent regmap unavailable.\n");
		return -ENXIO;
	}
	led->map = map;

	ret = FUNC6(np, "reg", &led->reg);
	if (ret) {
		FUNC0(&pdev->dev, "no register offset specified\n");
		return -EINVAL;
	}

	/* Use label else node name */
	led->cdev.name = FUNC5(np, "label", NULL) ? : np->name;
	led->cdev.default_trigger =
		FUNC5(np, "linux,default-trigger", NULL);
	led->cdev.brightness_set = pm8058_led_set;
	led->cdev.brightness_get = pm8058_led_get;
	if (led->ledtype == PM8058_LED_TYPE_COMMON)
		maxbright = 31; /* 5 bits */
	else
		maxbright = 15; /* 4 bits */
	led->cdev.max_brightness = maxbright;

	state = FUNC5(np, "default-state", NULL);
	if (state) {
		if (!FUNC9(state, "keep")) {
			led->cdev.brightness = FUNC7(&led->cdev);
		} else if (!FUNC9(state, "on")) {
			led->cdev.brightness = maxbright;
			FUNC8(&led->cdev, maxbright);
		} else {
			led->cdev.brightness = LED_OFF;
			FUNC8(&led->cdev, LED_OFF);
		}
	}

	if (led->ledtype == PM8058_LED_TYPE_KEYPAD ||
	    led->ledtype == PM8058_LED_TYPE_FLASH)
		led->cdev.flags	= LED_CORE_SUSPENDRESUME;

	ret = FUNC3(&pdev->dev, &led->cdev);
	if (ret) {
		FUNC0(&pdev->dev, "unable to register led \"%s\"\n",
			led->cdev.name);
		return ret;
	}

	return 0;
}