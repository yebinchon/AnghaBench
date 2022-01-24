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
typedef  size_t u8 ;
struct drm_display_mode {unsigned int clock; scalar_t__ picture_aspect_ratio; } ;

/* Variables and functions */
 size_t FUNC0 (struct drm_display_mode*) ; 
 unsigned int DRM_MODE_MATCH_ASPECT_RATIO ; 
 unsigned int DRM_MODE_MATCH_FLAGS ; 
 unsigned int DRM_MODE_MATCH_TIMINGS ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct drm_display_mode*) ; 
 scalar_t__ FUNC3 (size_t,struct drm_display_mode*) ; 
 scalar_t__ FUNC4 (struct drm_display_mode const*,struct drm_display_mode*,unsigned int) ; 
 struct drm_display_mode* edid_cea_modes ; 

u8 FUNC5(const struct drm_display_mode *to_match)
{
	unsigned int match_flags = DRM_MODE_MATCH_TIMINGS | DRM_MODE_MATCH_FLAGS;
	u8 vic;

	if (!to_match->clock)
		return 0;

	if (to_match->picture_aspect_ratio)
		match_flags |= DRM_MODE_MATCH_ASPECT_RATIO;

	for (vic = 1; vic < FUNC0(edid_cea_modes); vic++) {
		struct drm_display_mode cea_mode = edid_cea_modes[vic];
		unsigned int clock1, clock2;

		/* Check both 60Hz and 59.94Hz */
		clock1 = cea_mode.clock;
		clock2 = FUNC2(&cea_mode);

		if (FUNC1(to_match->clock) != FUNC1(clock1) &&
		    FUNC1(to_match->clock) != FUNC1(clock2))
			continue;

		do {
			if (FUNC4(to_match, &cea_mode, match_flags))
				return vic;
		} while (FUNC3(vic, &cea_mode));
	}

	return 0;
}