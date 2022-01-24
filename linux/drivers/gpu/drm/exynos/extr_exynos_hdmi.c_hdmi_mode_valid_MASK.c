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
struct hdmi_context {int /*<<< orphan*/  dev; } ;
struct drm_display_mode {int flags; int clock; int /*<<< orphan*/  vrefresh; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int MODE_BAD ; 
 int MODE_OK ; 
 struct hdmi_context* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct hdmi_context*,int) ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector,
			struct drm_display_mode *mode)
{
	struct hdmi_context *hdata = FUNC1(connector);
	int ret;

	FUNC0(hdata->dev,
			  "xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\n",
			  mode->hdisplay, mode->vdisplay, mode->vrefresh,
			  (mode->flags & DRM_MODE_FLAG_INTERLACE) ? true :
			  false, mode->clock * 1000);

	ret = FUNC2(hdata, mode->clock * 1000);
	if (ret < 0)
		return MODE_BAD;

	return MODE_OK;
}