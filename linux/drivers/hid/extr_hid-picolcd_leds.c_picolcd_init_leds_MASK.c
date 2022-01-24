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
struct picolcd_data {struct led_classdev** led; TYPE_1__* hdev; } ;
struct led_classdev {char* name; int max_brightness; int /*<<< orphan*/  brightness_set; int /*<<< orphan*/  brightness_get; scalar_t__ brightness; } ;
struct hid_report {int maxfield; TYPE_2__** field; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int report_count; int report_size; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 char* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*) ; 
 struct led_classdev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct led_classdev*) ; 
 int /*<<< orphan*/  picolcd_led_get_brightness ; 
 int /*<<< orphan*/  picolcd_led_set_brightness ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,char*,int) ; 
 int FUNC7 (char*) ; 

int FUNC8(struct picolcd_data *data, struct hid_report *report)
{
	struct device *dev = &data->hdev->dev;
	struct led_classdev *led;
	size_t name_sz = FUNC7(FUNC1(dev)) + 8;
	char *name;
	int i, ret = 0;

	if (!report)
		return -ENODEV;
	if (report->maxfield != 1 || report->field[0]->report_count != 1 ||
			report->field[0]->report_size != 8) {
		FUNC0(dev, "unsupported LED_STATE report");
		return -EINVAL;
	}

	for (i = 0; i < 8; i++) {
		led = FUNC3(sizeof(struct led_classdev)+name_sz, GFP_KERNEL);
		if (!led) {
			FUNC0(dev, "can't allocate memory for LED %d\n", i);
			ret = -ENOMEM;
			goto err;
		}
		name = (void *)(&led[1]);
		FUNC6(name, name_sz, "%s::GPO%d", FUNC1(dev), i);
		led->name = name;
		led->brightness = 0;
		led->max_brightness = 1;
		led->brightness_get = picolcd_led_get_brightness;
		led->brightness_set = picolcd_led_set_brightness;

		data->led[i] = led;
		ret = FUNC4(dev, data->led[i]);
		if (ret) {
			data->led[i] = NULL;
			FUNC2(led);
			FUNC0(dev, "can't register LED %d\n", i);
			goto err;
		}
	}
	return 0;
err:
	for (i = 0; i < 8; i++)
		if (data->led[i]) {
			led = data->led[i];
			data->led[i] = NULL;
			FUNC5(led);
			FUNC2(led);
		}
	return ret;
}