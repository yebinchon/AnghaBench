#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_framebuffer {int* pitches; } ;
struct TYPE_4__ {TYPE_1__* rotated; } ;
struct TYPE_3__ {int pitch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 TYPE_2__* FUNC1 (struct drm_framebuffer const*) ; 

__attribute__((used)) static int FUNC2(const struct drm_framebuffer *fb, int color_plane,
			  unsigned int rotation)
{
	if (FUNC0(rotation))
		return FUNC1(fb)->rotated[color_plane].pitch;
	else
		return fb->pitches[color_plane];
}