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
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (int) ; 
 char const** drm_mode_status_names ; 

const char *FUNC2(enum drm_mode_status status)
{
	int index = status + 3;

	if (FUNC1(index < 0 || index >= FUNC0(drm_mode_status_names)))
		return "";

	return drm_mode_status_names[index];
}