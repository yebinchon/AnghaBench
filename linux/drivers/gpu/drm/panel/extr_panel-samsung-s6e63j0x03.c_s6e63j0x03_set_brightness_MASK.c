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
struct s6e63j0x03 {int dummy; } ;
struct TYPE_2__ {unsigned int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 struct s6e63j0x03* FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct s6e63j0x03*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *bl_dev)
{
	struct s6e63j0x03 *ctx = FUNC0(bl_dev);
	unsigned int brightness = bl_dev->props.brightness;

	return FUNC1(ctx, brightness);
}