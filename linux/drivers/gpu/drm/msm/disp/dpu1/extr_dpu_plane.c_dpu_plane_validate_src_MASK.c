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
typedef  scalar_t__ uint32_t ;
struct drm_rect {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_IMG_HEIGHT ; 
 scalar_t__ MAX_IMG_WIDTH ; 
 scalar_t__ FUNC0 (struct drm_rect*,struct drm_rect*) ; 
 scalar_t__ FUNC1 (struct drm_rect*) ; 
 scalar_t__ FUNC2 (struct drm_rect*,struct drm_rect*) ; 
 scalar_t__ FUNC3 (struct drm_rect*) ; 

__attribute__((used)) static bool FUNC4(struct drm_rect *src,
				   struct drm_rect *fb_rect,
				   uint32_t min_src_size)
{
	/* Ensure fb size is supported */
	if (FUNC3(fb_rect) > MAX_IMG_WIDTH ||
	    FUNC1(fb_rect) > MAX_IMG_HEIGHT)
		return false;

	/* Ensure src rect is above the minimum size */
	if (FUNC3(src) < min_src_size ||
	    FUNC1(src) < min_src_size)
		return false;

	/* Ensure src is fully encapsulated in fb */
	return FUNC2(fb_rect, src) &&
		FUNC0(fb_rect, src);
}