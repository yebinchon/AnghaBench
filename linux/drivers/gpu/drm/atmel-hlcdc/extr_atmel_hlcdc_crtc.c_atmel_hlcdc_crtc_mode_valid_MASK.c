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
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct atmel_hlcdc_crtc {int /*<<< orphan*/  dc; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct drm_display_mode const*) ; 
 struct atmel_hlcdc_crtc* FUNC1 (struct drm_crtc*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC2(struct drm_crtc *c,
			    const struct drm_display_mode *mode)
{
	struct atmel_hlcdc_crtc *crtc = FUNC1(c);

	return FUNC0(crtc->dc, mode);
}