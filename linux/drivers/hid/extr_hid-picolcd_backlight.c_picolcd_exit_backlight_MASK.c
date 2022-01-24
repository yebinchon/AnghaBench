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
struct picolcd_data {struct backlight_device* backlight; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 

void FUNC1(struct picolcd_data *data)
{
	struct backlight_device *bdev = data->backlight;

	data->backlight = NULL;
	FUNC0(bdev);
}