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
struct intel_sdvo {int dummy; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct TYPE_4__ {struct hdmi_avi_infoframe avi; } ;
struct TYPE_5__ {int /*<<< orphan*/  enable; TYPE_1__ avi; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {scalar_t__ limited_color_range; TYPE_2__ infoframes; int /*<<< orphan*/  has_hdmi_sink; TYPE_3__ base; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_AVI ; 
 int /*<<< orphan*/  HDMI_QUANTIZATION_RANGE_FULL ; 
 int /*<<< orphan*/  HDMI_QUANTIZATION_RANGE_LIMITED ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ ,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ ,struct drm_display_mode const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hdmi_avi_infoframe*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct intel_sdvo *intel_sdvo,
					     struct intel_crtc_state *crtc_state,
					     struct drm_connector_state *conn_state)
{
	struct hdmi_avi_infoframe *frame = &crtc_state->infoframes.avi.avi;
	const struct drm_display_mode *adjusted_mode =
		&crtc_state->base.adjusted_mode;
	int ret;

	if (!crtc_state->has_hdmi_sink)
		return true;

	crtc_state->infoframes.enable |=
		FUNC4(HDMI_INFOFRAME_TYPE_AVI);

	ret = FUNC1(frame,
						       conn_state->connector,
						       adjusted_mode);
	if (ret)
		return false;

	FUNC2(frame,
					   conn_state->connector,
					   adjusted_mode,
					   crtc_state->limited_color_range ?
					   HDMI_QUANTIZATION_RANGE_LIMITED :
					   HDMI_QUANTIZATION_RANGE_FULL);

	ret = FUNC3(frame);
	if (FUNC0(ret))
		return false;

	return true;
}