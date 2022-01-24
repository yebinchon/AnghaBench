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
typedef  scalar_t__ u8 ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct max8997_platform_data {TYPE_1__* led_pdata; } ;
struct TYPE_8__ {char* name; scalar_t__ max_brightness; scalar_t__ brightness; int /*<<< orphan*/  groups; int /*<<< orphan*/  flags; int /*<<< orphan*/  brightness_set; } ;
struct max8997_led {int id; TYPE_3__ cdev; int /*<<< orphan*/  mutex; struct max8997_dev* iodev; } ;
struct max8997_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_6__ {scalar_t__* mode; scalar_t__* brightness; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 scalar_t__ MAX8997_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 struct max8997_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct max8997_platform_data* FUNC2 (int /*<<< orphan*/ ) ; 
 struct max8997_led* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  max8997_groups ; 
 int /*<<< orphan*/  max8997_led_brightness_set ; 
 int /*<<< orphan*/  FUNC5 (struct max8997_led*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct max8997_led*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct max8997_dev *iodev = FUNC1(pdev->dev.parent);
	struct max8997_platform_data *pdata = FUNC2(iodev->dev);
	struct max8997_led *led;
	char name[20];
	int ret = 0;

	if (pdata == NULL) {
		FUNC0(&pdev->dev, "no platform data\n");
		return -ENODEV;
	}

	led = FUNC3(&pdev->dev, sizeof(*led), GFP_KERNEL);
	if (led == NULL)
		return -ENOMEM;

	led->id = pdev->id;
	FUNC8(name, sizeof(name), "max8997-led%d", pdev->id);

	led->cdev.name = name;
	led->cdev.brightness_set = max8997_led_brightness_set;
	led->cdev.flags |= LED_CORE_SUSPENDRESUME;
	led->cdev.brightness = 0;
	led->cdev.groups = max8997_groups;
	led->iodev = iodev;

	/* initialize mode and brightness according to platform_data */
	if (pdata->led_pdata) {
		u8 mode = 0, brightness = 0;

		mode = pdata->led_pdata->mode[led->id];
		brightness = pdata->led_pdata->brightness[led->id];

		FUNC6(led, mode);

		if (brightness > led->cdev.max_brightness)
			brightness = led->cdev.max_brightness;
		FUNC5(led, brightness);
		led->cdev.brightness = brightness;
	} else {
		FUNC6(led, MAX8997_NONE);
		FUNC5(led, 0);
	}

	FUNC7(&led->mutex);

	ret = FUNC4(&pdev->dev, &led->cdev);
	if (ret < 0)
		return ret;

	return 0;
}