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
struct TYPE_2__ {scalar_t__ fb_blank; scalar_t__ power; } ;
struct backlight_device {TYPE_1__ props; int /*<<< orphan*/  dev; } ;
struct acx565akm_panel {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ FB_BLANK_UNBLANK ; 
 unsigned int FUNC0 (struct acx565akm_panel*) ; 
 struct acx565akm_panel* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *dev)
{
	struct acx565akm_panel *lcd = FUNC1(&dev->dev);
	unsigned int intensity;

	FUNC2(&lcd->mutex);

	if (dev->props.fb_blank == FB_BLANK_UNBLANK &&
	    dev->props.power == FB_BLANK_UNBLANK)
		intensity = FUNC0(lcd);
	else
		intensity = 0;

	FUNC3(&lcd->mutex);

	return intensity;
}