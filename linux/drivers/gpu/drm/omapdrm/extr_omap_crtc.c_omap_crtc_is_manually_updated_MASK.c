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
struct omap_dss_device {int caps; } ;
struct omap_crtc {TYPE_2__* pipe; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* output; } ;
struct TYPE_3__ {struct omap_dss_device* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE ; 
 struct omap_crtc* FUNC1 (struct drm_crtc*) ; 

__attribute__((used)) static bool FUNC2(struct drm_crtc *crtc)
{
	struct omap_crtc *omap_crtc = FUNC1(crtc);
	struct omap_dss_device *display = omap_crtc->pipe->output->next;

	if (!display)
		return false;

	if (display->caps & OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE) {
		FUNC0("detected manually updated display!");
		return true;
	}

	return false;
}