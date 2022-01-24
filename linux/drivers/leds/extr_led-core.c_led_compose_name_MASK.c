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
struct led_properties {char* label; size_t color; int func_enum; scalar_t__ function; scalar_t__ color_present; scalar_t__ func_enum_present; } ;
struct led_init_data {char* devicename; char* default_label; scalar_t__ devname_mandatory; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int LED_MAX_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct fwnode_handle*) ; 
 char** led_colors ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct fwnode_handle*,struct led_properties*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 TYPE_1__* FUNC5 (struct fwnode_handle*) ; 

int FUNC6(struct device *dev, struct led_init_data *init_data,
		     char *led_classdev_name)
{
	struct led_properties props = {};
	struct fwnode_handle *fwnode = init_data->fwnode;
	const char *devicename = init_data->devicename;

	if (!led_classdev_name)
		return -EINVAL;

	FUNC2(dev, fwnode, &props);

	if (props.label) {
		/*
		 * If init_data.devicename is NULL, then it indicates that
		 * DT label should be used as-is for LED class device name.
		 * Otherwise the label is prepended with devicename to compose
		 * the final LED class device name.
		 */
		if (!devicename) {
			FUNC4(led_classdev_name, props.label,
				LED_MAX_NAME_SIZE);
		} else {
			FUNC3(led_classdev_name, LED_MAX_NAME_SIZE, "%s:%s",
				 devicename, props.label);
		}
	} else if (props.function || props.color_present) {
		char tmp_buf[LED_MAX_NAME_SIZE];

		if (props.func_enum_present) {
			FUNC3(tmp_buf, LED_MAX_NAME_SIZE, "%s:%s-%d",
				 props.color_present ? led_colors[props.color] : "",
				 props.function ?: "", props.func_enum);
		} else {
			FUNC3(tmp_buf, LED_MAX_NAME_SIZE, "%s:%s",
				 props.color_present ? led_colors[props.color] : "",
				 props.function ?: "");
		}
		if (init_data->devname_mandatory) {
			FUNC3(led_classdev_name, LED_MAX_NAME_SIZE, "%s:%s",
				 devicename, tmp_buf);
		} else {
			FUNC4(led_classdev_name, tmp_buf, LED_MAX_NAME_SIZE);

		}
	} else if (init_data->default_label) {
		if (!devicename) {
			FUNC0(dev, "Legacy LED naming requires devicename segment");
			return -EINVAL;
		}
		FUNC3(led_classdev_name, LED_MAX_NAME_SIZE, "%s:%s",
			 devicename, init_data->default_label);
	} else if (FUNC1(fwnode)) {
		FUNC4(led_classdev_name, FUNC5(fwnode)->name,
			LED_MAX_NAME_SIZE);
	} else
		return -EINVAL;

	return 0;
}