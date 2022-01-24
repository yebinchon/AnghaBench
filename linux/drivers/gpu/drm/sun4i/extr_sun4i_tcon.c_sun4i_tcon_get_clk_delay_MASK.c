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
struct drm_display_mode {int vtotal; int vdisplay; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(const struct drm_display_mode *mode,
				    int channel)
{
	int delay = mode->vtotal - mode->vdisplay;

	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
		delay /= 2;

	if (channel == 1)
		delay -= 2;

	delay = FUNC1(delay, 30);

	FUNC0("TCON %d clock delay %u\n", channel, delay);

	return delay;
}