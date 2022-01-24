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
struct picolcd_data {struct lcd_device* lcd; } ;
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lcd_device*) ; 

void FUNC1(struct picolcd_data *data)
{
	struct lcd_device *ldev = data->lcd;

	data->lcd = NULL;
	FUNC0(ldev);
}