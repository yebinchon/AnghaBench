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
struct picolcd_data {int dummy; } ;
struct lcd_device {int dummy; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lcd_device*) ; 
 struct fb_info* FUNC1 (struct picolcd_data*) ; 

__attribute__((used)) static int FUNC2(struct lcd_device *ldev, struct fb_info *fb)
{
	return fb && fb == FUNC1((struct picolcd_data *)FUNC0(ldev));
}