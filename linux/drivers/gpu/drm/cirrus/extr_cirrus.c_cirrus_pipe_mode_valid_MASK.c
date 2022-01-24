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
struct drm_display_mode {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct drm_crtc {int dummy; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int MODE_BAD ; 
 int MODE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum drm_mode_status FUNC1(struct drm_crtc *crtc,
						   const struct drm_display_mode *mode)
{
	if (FUNC0(mode->hdisplay, mode->vdisplay, NULL) < 0)
		return MODE_BAD;
	return MODE_OK;
}