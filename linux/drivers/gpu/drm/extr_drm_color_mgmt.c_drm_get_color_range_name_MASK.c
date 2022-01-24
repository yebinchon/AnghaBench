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
typedef  enum drm_color_range { ____Placeholder_drm_color_range } drm_color_range ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (int) ; 
 char const** color_range_name ; 

const char *FUNC2(enum drm_color_range range)
{
	if (FUNC1(range >= FUNC0(color_range_name)))
		return "unknown";

	return color_range_name[range];
}