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
struct TYPE_2__ {scalar_t__ fb_blank; scalar_t__ power; int brightness; } ;
struct backlight_device {TYPE_1__ props; int /*<<< orphan*/  dev; } ;
struct acx565akm_panel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (struct acx565akm_panel*,int) ; 
 struct acx565akm_panel* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *dev)
{
	struct acx565akm_panel *lcd = FUNC1(&dev->dev);
	int level;

	if (dev->props.fb_blank == FB_BLANK_UNBLANK &&
	    dev->props.power == FB_BLANK_UNBLANK)
		level = dev->props.brightness;
	else
		level = 0;

	FUNC0(lcd, level);

	return 0;
}