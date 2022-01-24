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
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 unsigned int DRM_MODE_MATCH_3D_FLAGS ; 
 unsigned int DRM_MODE_MATCH_ASPECT_RATIO ; 
 unsigned int DRM_MODE_MATCH_CLOCK ; 
 unsigned int DRM_MODE_MATCH_FLAGS ; 
 unsigned int DRM_MODE_MATCH_TIMINGS ; 
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode const*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode const*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode const*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode const*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_display_mode const*,struct drm_display_mode const*) ; 

bool FUNC5(const struct drm_display_mode *mode1,
		    const struct drm_display_mode *mode2,
		    unsigned int match_flags)
{
	if (!mode1 && !mode2)
		return true;

	if (!mode1 || !mode2)
		return false;

	if (match_flags & DRM_MODE_MATCH_TIMINGS &&
	    !FUNC4(mode1, mode2))
		return false;

	if (match_flags & DRM_MODE_MATCH_CLOCK &&
	    !FUNC2(mode1, mode2))
		return false;

	if (match_flags & DRM_MODE_MATCH_FLAGS &&
	    !FUNC3(mode1, mode2))
		return false;

	if (match_flags & DRM_MODE_MATCH_3D_FLAGS &&
	    !FUNC0(mode1, mode2))
		return false;

	if (match_flags & DRM_MODE_MATCH_ASPECT_RATIO &&
	    !FUNC1(mode1, mode2))
		return false;

	return true;
}