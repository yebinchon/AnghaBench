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
struct drm_display_mode {int hdisplay; int vdisplay; int hsync_start; int hsync_end; int htotal; int vsync_start; int vsync_end; int vtotal; int clock; int /*<<< orphan*/  type; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_TYPE_PREFERRED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_display_mode *FUNC3(struct drm_device *dev)
{
	struct drm_display_mode *mode;

	mode = FUNC2(sizeof(*mode), GFP_KERNEL);
	if (!mode)
		return NULL;

	mode->hdisplay = 864;
	mode->vdisplay = 480;
	mode->hsync_start = 873;
	mode->hsync_end = 876;
	mode->htotal = 887;
	mode->vsync_start = 487;
	mode->vsync_end = 490;
	mode->vtotal = 499;
	mode->clock = 33264;

	FUNC1(mode);
	FUNC0(mode, 0);

	mode->type |= DRM_MODE_TYPE_PREFERRED;

	return mode;
}