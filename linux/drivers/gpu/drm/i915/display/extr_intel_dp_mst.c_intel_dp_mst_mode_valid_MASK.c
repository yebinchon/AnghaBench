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
struct intel_dp {int dummy; } ;
struct intel_connector {struct intel_dp* mst_port; } ;
struct drm_display_mode {int flags; int clock; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int max_dotclk_freq; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_DBLCLK ; 
 int DRM_MODE_FLAG_DBLSCAN ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_CLOCK_LOW ; 
 int MODE_ERROR ; 
 int MODE_H_ILLEGAL ; 
 int MODE_NO_DBLESCAN ; 
 int MODE_OK ; 
 scalar_t__ FUNC0 (struct drm_connector*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (struct intel_dp*) ; 
 int FUNC4 (struct intel_dp*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC7(struct drm_connector *connector,
			struct drm_display_mode *mode)
{
	struct intel_connector *intel_connector = FUNC6(connector);
	struct intel_dp *intel_dp = intel_connector->mst_port;
	int max_dotclk = FUNC5(connector->dev)->max_dotclk_freq;
	int max_rate, mode_rate, max_lanes, max_link_clock;

	if (FUNC0(connector))
		return MODE_ERROR;

	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return MODE_NO_DBLESCAN;

	max_link_clock = FUNC4(intel_dp);
	max_lanes = FUNC3(intel_dp);

	max_rate = FUNC2(max_link_clock, max_lanes);
	mode_rate = FUNC1(mode->clock, 18);

	/* TODO - validate mode against available PBN for link */
	if (mode->clock < 10000)
		return MODE_CLOCK_LOW;

	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
		return MODE_H_ILLEGAL;

	if (mode_rate > max_rate || mode->clock > max_dotclk)
		return MODE_CLOCK_HIGH;

	return MODE_OK;
}