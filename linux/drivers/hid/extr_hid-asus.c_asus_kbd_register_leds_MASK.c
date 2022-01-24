#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hid_device {int /*<<< orphan*/  dev; } ;
struct asus_kbd_leds {int dummy; } ;
struct asus_drvdata {TYPE_2__* kbd_backlight; } ;
struct TYPE_4__ {char* name; int max_brightness; int /*<<< orphan*/  brightness_get; int /*<<< orphan*/  brightness_set; } ;
struct TYPE_5__ {int removed; TYPE_1__ cdev; int /*<<< orphan*/  work; struct hid_device* hdev; scalar_t__ brightness; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned char SUPPORT_KBD_BACKLIGHT ; 
 int /*<<< orphan*/  asus_kbd_backlight_get ; 
 int /*<<< orphan*/  asus_kbd_backlight_set ; 
 int /*<<< orphan*/  asus_kbd_backlight_work ; 
 int FUNC1 (struct hid_device*,unsigned char*) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct asus_drvdata* FUNC6 (struct hid_device*) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hdev)
{
	struct asus_drvdata *drvdata = FUNC6(hdev);
	unsigned char kbd_func;
	int ret;

	/* Initialize keyboard */
	ret = FUNC2(hdev);
	if (ret < 0)
		return ret;

	/* Get keyboard functions */
	ret = FUNC1(hdev, &kbd_func);
	if (ret < 0)
		return ret;

	/* Check for backlight support */
	if (!(kbd_func & SUPPORT_KBD_BACKLIGHT))
		return -ENODEV;

	drvdata->kbd_backlight = FUNC4(&hdev->dev,
					      sizeof(struct asus_kbd_leds),
					      GFP_KERNEL);
	if (!drvdata->kbd_backlight)
		return -ENOMEM;

	drvdata->kbd_backlight->removed = false;
	drvdata->kbd_backlight->brightness = 0;
	drvdata->kbd_backlight->hdev = hdev;
	drvdata->kbd_backlight->cdev.name = "asus::kbd_backlight";
	drvdata->kbd_backlight->cdev.max_brightness = 3;
	drvdata->kbd_backlight->cdev.brightness_set = asus_kbd_backlight_set;
	drvdata->kbd_backlight->cdev.brightness_get = asus_kbd_backlight_get;
	FUNC0(&drvdata->kbd_backlight->work, asus_kbd_backlight_work);

	ret = FUNC5(&hdev->dev, &drvdata->kbd_backlight->cdev);
	if (ret < 0) {
		/* No need to have this still around */
		FUNC3(&hdev->dev, drvdata->kbd_backlight);
	}

	return ret;
}