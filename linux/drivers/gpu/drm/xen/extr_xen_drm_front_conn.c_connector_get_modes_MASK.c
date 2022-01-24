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
typedef  int /*<<< orphan*/  videomode ;
struct xen_drm_front_drm_pipeline {int width; int height; } ;
struct videomode {int hactive; int vactive; int hfront_porch; int hback_porch; int hsync_len; int vfront_porch; int vback_porch; int vsync_len; int pixelclock; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 int XEN_DRM_CRTC_VREFRESH_HZ ; 
 int /*<<< orphan*/  FUNC0 (struct videomode*,struct drm_display_mode*) ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC3 (struct videomode*,int /*<<< orphan*/ ,int) ; 
 struct xen_drm_front_drm_pipeline* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct xen_drm_front_drm_pipeline *pipeline =
			FUNC4(connector);
	struct drm_display_mode *mode;
	struct videomode videomode;
	int width, height;

	mode = FUNC1(connector->dev);
	if (!mode)
		return 0;

	FUNC3(&videomode, 0, sizeof(videomode));
	videomode.hactive = pipeline->width;
	videomode.vactive = pipeline->height;
	width = videomode.hactive + videomode.hfront_porch +
			videomode.hback_porch + videomode.hsync_len;
	height = videomode.vactive + videomode.vfront_porch +
			videomode.vback_porch + videomode.vsync_len;
	videomode.pixelclock = width * height * XEN_DRM_CRTC_VREFRESH_HZ;
	mode->type = DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER;

	FUNC0(&videomode, mode);
	FUNC2(connector, mode);
	return 1;
}