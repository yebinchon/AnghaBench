#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct intel_sdvo_enhancements_reply {scalar_t__ dot_crawl; scalar_t__ overscan_v; scalar_t__ overscan_h; } ;
struct TYPE_8__ {int overscan_h; int overscan_v; int dot_crawl; int /*<<< orphan*/  luma_filter; int /*<<< orphan*/  chroma_filter; } ;
struct intel_sdvo_connector_state {TYPE_4__ tv; } ;
struct drm_connector {int /*<<< orphan*/  base; struct drm_connector_state* state; } ;
struct TYPE_7__ {struct drm_connector base; } ;
struct intel_sdvo_connector {int max_hscan; int max_vscan; void* dot_crawl; void* bottom; void* top; void* right; void* left; TYPE_3__ base; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct intel_sdvo {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {TYPE_4__ tv; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRIGHTNESS ; 
 int /*<<< orphan*/  CONTRAST ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLICKER_FILTER ; 
 int /*<<< orphan*/  FLICKER_FILTER_2D ; 
 int /*<<< orphan*/  FLICKER_FILTER_ADAPTIVE ; 
 int /*<<< orphan*/  HPOS ; 
 int /*<<< orphan*/  HUE ; 
 int /*<<< orphan*/  SATURATION ; 
 int /*<<< orphan*/  SDVO_CMD_GET_DOT_CRAWL ; 
 int /*<<< orphan*/  SDVO_CMD_GET_MAX_OVERSCAN_H ; 
 int /*<<< orphan*/  SDVO_CMD_GET_MAX_OVERSCAN_V ; 
 int /*<<< orphan*/  SDVO_CMD_GET_OVERSCAN_H ; 
 int /*<<< orphan*/  SDVO_CMD_GET_OVERSCAN_V ; 
 int /*<<< orphan*/  SHARPNESS ; 
 int /*<<< orphan*/  TV_CHROMA_FILTER ; 
 int /*<<< orphan*/  TV_LUMA_FILTER ; 
 int /*<<< orphan*/  VPOS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brightness ; 
 int /*<<< orphan*/  contrast ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  flicker_filter ; 
 int /*<<< orphan*/  flicker_filter_2d ; 
 int /*<<< orphan*/  flicker_filter_adaptive ; 
 int /*<<< orphan*/  hpos ; 
 int /*<<< orphan*/  hue ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sdvo*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  saturation ; 
 int /*<<< orphan*/  sharpness ; 
 struct intel_sdvo_connector_state* FUNC6 (struct drm_connector_state*) ; 
 int /*<<< orphan*/  tv_chroma_filter ; 
 int /*<<< orphan*/  tv_luma_filter ; 
 int /*<<< orphan*/  vpos ; 

__attribute__((used)) static bool
FUNC7(struct intel_sdvo *intel_sdvo,
				      struct intel_sdvo_connector *intel_sdvo_connector,
				      struct intel_sdvo_enhancements_reply enhancements)
{
	struct drm_device *dev = intel_sdvo->base.base.dev;
	struct drm_connector *connector = &intel_sdvo_connector->base.base;
	struct drm_connector_state *conn_state = connector->state;
	struct intel_sdvo_connector_state *sdvo_state =
		FUNC6(conn_state);
	u16 response, data_value[2];

	/* when horizontal overscan is supported, Add the left/right property */
	if (enhancements.overscan_h) {
		if (!FUNC5(intel_sdvo,
					  SDVO_CMD_GET_MAX_OVERSCAN_H,
					  &data_value, 4))
			return false;

		if (!FUNC5(intel_sdvo,
					  SDVO_CMD_GET_OVERSCAN_H,
					  &response, 2))
			return false;

		sdvo_state->tv.overscan_h = response;

		intel_sdvo_connector->max_hscan = data_value[0];
		intel_sdvo_connector->left =
			FUNC4(dev, 0, "left_margin", 0, data_value[0]);
		if (!intel_sdvo_connector->left)
			return false;

		FUNC3(&connector->base,
					   intel_sdvo_connector->left, 0);

		intel_sdvo_connector->right =
			FUNC4(dev, 0, "right_margin", 0, data_value[0]);
		if (!intel_sdvo_connector->right)
			return false;

		FUNC3(&connector->base,
					      intel_sdvo_connector->right, 0);
		FUNC0("h_overscan: max %d, "
			      "default %d, current %d\n",
			      data_value[0], data_value[1], response);
	}

	if (enhancements.overscan_v) {
		if (!FUNC5(intel_sdvo,
					  SDVO_CMD_GET_MAX_OVERSCAN_V,
					  &data_value, 4))
			return false;

		if (!FUNC5(intel_sdvo,
					  SDVO_CMD_GET_OVERSCAN_V,
					  &response, 2))
			return false;

		sdvo_state->tv.overscan_v = response;

		intel_sdvo_connector->max_vscan = data_value[0];
		intel_sdvo_connector->top =
			FUNC4(dev, 0,
					    "top_margin", 0, data_value[0]);
		if (!intel_sdvo_connector->top)
			return false;

		FUNC3(&connector->base,
					   intel_sdvo_connector->top, 0);

		intel_sdvo_connector->bottom =
			FUNC4(dev, 0,
					    "bottom_margin", 0, data_value[0]);
		if (!intel_sdvo_connector->bottom)
			return false;

		FUNC3(&connector->base,
					      intel_sdvo_connector->bottom, 0);
		FUNC0("v_overscan: max %d, "
			      "default %d, current %d\n",
			      data_value[0], data_value[1], response);
	}

	FUNC1(&sdvo_state->tv, hpos, HPOS);
	FUNC1(&sdvo_state->tv, vpos, VPOS);
	FUNC1(&conn_state->tv, saturation, SATURATION);
	FUNC1(&conn_state->tv, contrast, CONTRAST);
	FUNC1(&conn_state->tv, hue, HUE);
	FUNC1(&conn_state->tv, brightness, BRIGHTNESS);
	FUNC1(&sdvo_state->tv, sharpness, SHARPNESS);
	FUNC1(&sdvo_state->tv, flicker_filter, FLICKER_FILTER);
	FUNC1(&sdvo_state->tv, flicker_filter_adaptive, FLICKER_FILTER_ADAPTIVE);
	FUNC1(&sdvo_state->tv, flicker_filter_2d, FLICKER_FILTER_2D);
	FUNC2(sdvo_state->tv.chroma_filter, tv_chroma_filter, TV_CHROMA_FILTER);
	FUNC2(sdvo_state->tv.luma_filter, tv_luma_filter, TV_LUMA_FILTER);

	if (enhancements.dot_crawl) {
		if (!FUNC5(intel_sdvo, SDVO_CMD_GET_DOT_CRAWL, &response, 2))
			return false;

		sdvo_state->tv.dot_crawl = response & 0x1;
		intel_sdvo_connector->dot_crawl =
			FUNC4(dev, 0, "dot_crawl", 0, 1);
		if (!intel_sdvo_connector->dot_crawl)
			return false;

		FUNC3(&connector->base,
					   intel_sdvo_connector->dot_crawl, 0);
		FUNC0("dot crawl: current %d\n", response);
	}

	return true;
}