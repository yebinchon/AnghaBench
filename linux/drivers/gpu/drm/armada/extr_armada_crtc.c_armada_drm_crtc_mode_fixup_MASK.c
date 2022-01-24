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
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct armada_crtc {TYPE_1__* variant; } ;
struct TYPE_2__ {int (* compute_clock ) (struct armada_crtc*,struct drm_display_mode*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_INTERLACE_HALVE_V ; 
 scalar_t__ MODE_OK ; 
 scalar_t__ FUNC0 (struct drm_crtc*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 
 struct armada_crtc* FUNC2 (struct drm_crtc*) ; 
 int FUNC3 (struct armada_crtc*,struct drm_display_mode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct drm_crtc *crtc,
	const struct drm_display_mode *mode, struct drm_display_mode *adj)
{
	struct armada_crtc *dcrtc = FUNC2(crtc);
	int ret;

	/*
	 * Set CRTC modesetting parameters for the adjusted mode.  This is
	 * applied after the connectors, bridges, and encoders have fixed up
	 * this mode, as described above drm_atomic_helper_check_modeset().
	 */
	FUNC1(adj, CRTC_INTERLACE_HALVE_V);

	/*
	 * Validate the adjusted mode in case an encoder/bridge has set
	 * something we don't support.
	 */
	if (FUNC0(crtc, adj) != MODE_OK)
		return false;

	/* Check whether the display mode is possible */
	ret = dcrtc->variant->compute_clock(dcrtc, adj, NULL);
	if (ret)
		return false;

	return true;
}