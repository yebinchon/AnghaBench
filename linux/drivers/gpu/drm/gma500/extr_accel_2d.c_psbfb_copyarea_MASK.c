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
struct fb_info {scalar_t__ state; int flags; } ;
struct fb_copyarea {int width; int height; } ;

/* Variables and functions */
 int FBINFO_HWACCEL_DISABLED ; 
 scalar_t__ FBINFO_STATE_RUNNING ; 
 void FUNC0 (struct fb_info*,struct fb_copyarea const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_copyarea const*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct fb_info *info,
			   const struct fb_copyarea *region)
{
	if (FUNC2(info->state != FBINFO_STATE_RUNNING))
		return;

	/* Avoid the 8 pixel erratum */
	if (region->width == 8 || region->height == 8 ||
		(info->flags & FBINFO_HWACCEL_DISABLED))
		return FUNC0(info, region);

	FUNC1(info, region);
}