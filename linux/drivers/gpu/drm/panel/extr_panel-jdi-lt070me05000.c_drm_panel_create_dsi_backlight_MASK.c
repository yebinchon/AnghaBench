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
struct device {int dummy; } ;
struct mipi_dsi_device {struct device dev; } ;
struct backlight_properties {int brightness; int max_brightness; int /*<<< orphan*/  type; } ;
struct backlight_device {int dummy; } ;
typedef  int /*<<< orphan*/  props ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct backlight_device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct device*,struct mipi_dsi_device*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  dsi_bl_ops ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct backlight_device *
FUNC3(struct mipi_dsi_device *dsi)
{
	struct device *dev = &dsi->dev;
	struct backlight_properties props;

	FUNC2(&props, 0, sizeof(props));
	props.type = BACKLIGHT_RAW;
	props.brightness = 255;
	props.max_brightness = 255;

	return FUNC1(dev, FUNC0(dev), dev, dsi,
					      &dsi_bl_ops, &props);
}