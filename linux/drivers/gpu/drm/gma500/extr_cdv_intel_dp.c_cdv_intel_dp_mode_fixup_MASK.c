#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct TYPE_5__ {int bpp; } ;
struct drm_psb_private {TYPE_2__ edp; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_display_mode {int clock; } ;
struct cdv_intel_dp {int link_bw; int lane_count; TYPE_3__* panel_fixed_mode; } ;
struct TYPE_6__ {int clock; } ;
struct TYPE_4__ {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
#define  DP_LINK_BW_1_62 129 
#define  DP_LINK_BW_2_7 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (void*,int) ; 
 int FUNC4 (struct gma_encoder*) ; 
 scalar_t__ FUNC5 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct drm_display_mode*) ; 
 scalar_t__ FUNC7 (struct gma_encoder*) ; 
 struct gma_encoder* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static bool
FUNC9(struct drm_encoder *encoder, const struct drm_display_mode *mode,
		    struct drm_display_mode *adjusted_mode)
{
	struct drm_psb_private *dev_priv = encoder->dev->dev_private;
	struct gma_encoder *intel_encoder = FUNC8(encoder);
	struct cdv_intel_dp *intel_dp = intel_encoder->dev_priv;
	int lane_count, clock;
	int max_lane_count = FUNC4(intel_encoder);
	int max_clock = FUNC5(intel_encoder) == DP_LINK_BW_2_7 ? 1 : 0;
	static int bws[2] = { DP_LINK_BW_1_62, DP_LINK_BW_2_7 };
	int refclock = mode->clock;
	int bpp = 24;

	if (FUNC7(intel_encoder) && intel_dp->panel_fixed_mode) {
		FUNC6(intel_dp->panel_fixed_mode, adjusted_mode);
		refclock = intel_dp->panel_fixed_mode->clock;
		bpp = dev_priv->edp.bpp;
	}

	for (lane_count = 1; lane_count <= max_lane_count; lane_count <<= 1) {
		for (clock = max_clock; clock >= 0; clock--) {
			int link_avail = FUNC3(FUNC1(bws[clock]), lane_count);

			if (FUNC2(refclock, bpp) <= link_avail) {
				intel_dp->link_bw = bws[clock];
				intel_dp->lane_count = lane_count;
				adjusted_mode->clock = FUNC1(intel_dp->link_bw);
				FUNC0("Display port link bw %02x lane "
						"count %d clock %d\n",
				       intel_dp->link_bw, intel_dp->lane_count,
				       adjusted_mode->clock);
				return true;
			}
		}
	}
	if (FUNC7(intel_encoder)) {
		/* okay we failed just pick the highest */
		intel_dp->lane_count = max_lane_count;
		intel_dp->link_bw = bws[max_clock];
		adjusted_mode->clock = FUNC1(intel_dp->link_bw);
		FUNC0("Force picking display port link bw %02x lane "
			      "count %d clock %d\n",
			      intel_dp->link_bw, intel_dp->lane_count,
			      adjusted_mode->clock);

		return true;
	}
	return false;
}