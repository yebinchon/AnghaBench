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
struct drm_display_mode {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  htotal; int /*<<< orphan*/  vsync_end; int /*<<< orphan*/  hsync_end; int /*<<< orphan*/  vsync_start; int /*<<< orphan*/  hsync_start; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct drm_display_mode *mode,
				unsigned int rotation)
{
	if (rotation == 0 || rotation == 180) {
		return 0;
	} else if (rotation == 90 || rotation == 270) {
		FUNC0(mode->hdisplay, mode->vdisplay);
		FUNC0(mode->hsync_start, mode->vsync_start);
		FUNC0(mode->hsync_end, mode->vsync_end);
		FUNC0(mode->htotal, mode->vtotal);
		FUNC0(mode->width_mm, mode->height_mm);
		return 0;
	} else {
		return -EINVAL;
	}
}