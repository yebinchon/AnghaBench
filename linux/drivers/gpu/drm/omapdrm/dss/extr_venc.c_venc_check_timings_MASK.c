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
struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_INTERLACE_HALVE_V ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
#define  VENC_MODE_NTSC 129 
#define  VENC_MODE_PAL 128 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*) ; 
 int /*<<< orphan*/  omap_dss_ntsc_mode ; 
 int /*<<< orphan*/  omap_dss_pal_mode ; 
 int FUNC4 (struct drm_display_mode*) ; 

__attribute__((used)) static int FUNC5(struct omap_dss_device *dssdev,
			      struct drm_display_mode *mode)
{
	FUNC0("venc_check_timings\n");

	switch (FUNC4(mode)) {
	case VENC_MODE_PAL:
		FUNC1(mode, &omap_dss_pal_mode);
		break;

	case VENC_MODE_NTSC:
		FUNC1(mode, &omap_dss_ntsc_mode);
		break;

	default:
		return -EINVAL;
	}

	FUNC2(mode, CRTC_INTERLACE_HALVE_V);
	FUNC3(mode);
	return 0;
}