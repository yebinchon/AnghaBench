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
struct mtk_hdmi {int /*<<< orphan*/  mode; int /*<<< orphan*/  dev; } ;
struct drm_display_mode {int /*<<< orphan*/  flags; int /*<<< orphan*/  vscan; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  vsync_end; int /*<<< orphan*/  vsync_start; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hskew; int /*<<< orphan*/  htotal; int /*<<< orphan*/  hsync_end; int /*<<< orphan*/  hsync_start; int /*<<< orphan*/  hdisplay; int /*<<< orphan*/  name; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_display_mode const*) ; 
 struct mtk_hdmi* FUNC2 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge,
				const struct drm_display_mode *mode,
				const struct drm_display_mode *adjusted_mode)
{
	struct mtk_hdmi *hdmi = FUNC2(bridge);

	FUNC0(hdmi->dev, "cur info: name:%s, hdisplay:%d\n",
		adjusted_mode->name, adjusted_mode->hdisplay);
	FUNC0(hdmi->dev, "hsync_start:%d,hsync_end:%d, htotal:%d",
		adjusted_mode->hsync_start, adjusted_mode->hsync_end,
		adjusted_mode->htotal);
	FUNC0(hdmi->dev, "hskew:%d, vdisplay:%d\n",
		adjusted_mode->hskew, adjusted_mode->vdisplay);
	FUNC0(hdmi->dev, "vsync_start:%d, vsync_end:%d, vtotal:%d",
		adjusted_mode->vsync_start, adjusted_mode->vsync_end,
		adjusted_mode->vtotal);
	FUNC0(hdmi->dev, "vscan:%d, flag:%d\n",
		adjusted_mode->vscan, adjusted_mode->flags);

	FUNC1(&hdmi->mode, adjusted_mode);
}