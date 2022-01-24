#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ next; } ;
struct mtk_hdmi {TYPE_1__ bridge; int /*<<< orphan*/  dev; } ;
struct drm_display_mode {int flags; int clock; int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_INTERLACE ; 
 int MODE_BAD ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_CLOCK_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct drm_display_mode*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_display_mode*,struct drm_display_mode*) ; 
 int FUNC3 (struct drm_display_mode*,int,int) ; 
 struct mtk_hdmi* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *conn,
				    struct drm_display_mode *mode)
{
	struct mtk_hdmi *hdmi = FUNC4(conn);

	FUNC0(hdmi->dev, "xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\n",
		mode->hdisplay, mode->vdisplay, mode->vrefresh,
		!!(mode->flags & DRM_MODE_FLAG_INTERLACE), mode->clock * 1000);

	if (hdmi->bridge.next) {
		struct drm_display_mode adjusted_mode;

		FUNC2(&adjusted_mode, mode);
		if (!FUNC1(hdmi->bridge.next, mode,
					   &adjusted_mode))
			return MODE_BAD;
	}

	if (mode->clock < 27000)
		return MODE_CLOCK_LOW;
	if (mode->clock > 297000)
		return MODE_CLOCK_HIGH;

	return FUNC3(mode, 0x1fff, 0x1fff);
}