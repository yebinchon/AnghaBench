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
struct drm_framebuffer {int dummy; } ;

/* Variables and functions */
 int CIRRUS_MAX_PITCH ; 
 int CIRRUS_VRAM_SIZE ; 
 int EINVAL ; 
 int FUNC0 (struct drm_framebuffer*) ; 

__attribute__((used)) static int FUNC1(int width, int height,
			     struct drm_framebuffer *fb)
{
	int pitch = width * 2;

	if (fb)
		pitch = FUNC0(fb);

	if (pitch > CIRRUS_MAX_PITCH)
		return -EINVAL;
	if (pitch * height > CIRRUS_VRAM_SIZE)
		return -EINVAL;
	return 0;
}