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
struct drm_framebuffer {scalar_t__ modifier; } ;

/* Variables and functions */
 scalar_t__ DRM_FORMAT_MOD_LINEAR ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct drm_framebuffer const*,int) ; 
 unsigned int FUNC2 (struct drm_framebuffer const*,int) ; 

__attribute__((used)) static unsigned int FUNC3(const struct drm_framebuffer *fb,
					  int color_plane, unsigned int rotation)
{
	/*
	 * The stride is either expressed as a multiple of 64 bytes chunks for
	 * linear buffers or in number of tiles for tiled buffers.
	 */
	if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
		return 64;
	else if (FUNC0(rotation))
		return FUNC1(fb, color_plane);
	else
		return FUNC2(fb, color_plane);
}