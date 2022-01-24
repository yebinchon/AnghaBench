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
struct intel_digital_connector_state {scalar_t__ broadcast_rgb; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; TYPE_1__ base; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ HDMI_QUANTIZATION_RANGE_LIMITED ; 
 scalar_t__ INTEL_BROADCAST_RGB_AUTO ; 
 scalar_t__ INTEL_BROADCAST_RGB_LIMITED ; 
 scalar_t__ FUNC0 (struct drm_display_mode const*) ; 
 struct intel_digital_connector_state* FUNC1 (struct drm_connector_state const*) ; 

bool FUNC2(const struct intel_crtc_state *crtc_state,
				  const struct drm_connector_state *conn_state)
{
	const struct intel_digital_connector_state *intel_conn_state =
		FUNC1(conn_state);
	const struct drm_display_mode *adjusted_mode =
		&crtc_state->base.adjusted_mode;

	if (intel_conn_state->broadcast_rgb == INTEL_BROADCAST_RGB_AUTO) {
		/*
		 * See:
		 * CEA-861-E - 5.1 Default Encoding Parameters
		 * VESA DisplayPort Ver.1.2a - 5.1.1.1 Video Colorimetry
		 */
		return crtc_state->pipe_bpp != 18 &&
			FUNC0(adjusted_mode) ==
			HDMI_QUANTIZATION_RANGE_LIMITED;
	} else {
		return intel_conn_state->broadcast_rgb ==
			INTEL_BROADCAST_RGB_LIMITED;
	}
}