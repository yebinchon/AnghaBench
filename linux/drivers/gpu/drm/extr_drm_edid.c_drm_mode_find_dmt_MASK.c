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
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_display_mode*) ; 
 struct drm_display_mode* drm_dmt_modes ; 
 struct drm_display_mode* FUNC1 (struct drm_device*,struct drm_display_mode const*) ; 
 int FUNC2 (struct drm_display_mode const*) ; 
 int FUNC3 (struct drm_display_mode const*) ; 

struct drm_display_mode *FUNC4(struct drm_device *dev,
					   int hsize, int vsize, int fresh,
					   bool rb)
{
	int i;

	for (i = 0; i < FUNC0(drm_dmt_modes); i++) {
		const struct drm_display_mode *ptr = &drm_dmt_modes[i];
		if (hsize != ptr->hdisplay)
			continue;
		if (vsize != ptr->vdisplay)
			continue;
		if (fresh != FUNC2(ptr))
			continue;
		if (rb != FUNC3(ptr))
			continue;

		return FUNC1(dev, ptr);
	}

	return NULL;
}