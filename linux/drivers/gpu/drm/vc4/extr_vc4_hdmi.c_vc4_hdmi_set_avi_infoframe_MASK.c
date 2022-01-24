#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  bottom_bar; int /*<<< orphan*/  top_bar; int /*<<< orphan*/  left_bar; int /*<<< orphan*/  right_bar; } ;
union hdmi_infoframe {TYPE_5__ avi; } ;
struct vc4_hdmi_encoder {scalar_t__ limited_rgb_range; } ;
struct vc4_hdmi {TYPE_6__* connector; } ;
struct vc4_dev {struct vc4_hdmi* hdmi; } ;
struct drm_encoder {struct drm_crtc* crtc; TYPE_1__* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {TYPE_2__* state; } ;
struct TYPE_11__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  left; int /*<<< orphan*/  right; } ;
struct TYPE_12__ {TYPE_3__ margins; } ;
struct drm_connector_state {TYPE_4__ tv; } ;
struct TYPE_14__ {struct drm_connector_state* state; } ;
struct TYPE_10__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_9__ {struct vc4_dev* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HDMI_QUANTIZATION_RANGE_FULL ; 
 int /*<<< orphan*/  HDMI_QUANTIZATION_RANGE_LIMITED ; 
 int FUNC1 (TYPE_5__*,TYPE_6__*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_6__*,struct drm_display_mode const*,int /*<<< orphan*/ ) ; 
 struct vc4_hdmi_encoder* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,union hdmi_infoframe*) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct vc4_hdmi_encoder *vc4_encoder = FUNC3(encoder);
	struct vc4_dev *vc4 = encoder->dev->dev_private;
	struct vc4_hdmi *hdmi = vc4->hdmi;
	struct drm_connector_state *cstate = hdmi->connector->state;
	struct drm_crtc *crtc = encoder->crtc;
	const struct drm_display_mode *mode = &crtc->state->adjusted_mode;
	union hdmi_infoframe frame;
	int ret;

	ret = FUNC1(&frame.avi,
						       hdmi->connector, mode);
	if (ret < 0) {
		FUNC0("couldn't fill AVI infoframe\n");
		return;
	}

	FUNC2(&frame.avi,
					   hdmi->connector, mode,
					   vc4_encoder->limited_rgb_range ?
					   HDMI_QUANTIZATION_RANGE_LIMITED :
					   HDMI_QUANTIZATION_RANGE_FULL);

	frame.avi.right_bar = cstate->tv.margins.right;
	frame.avi.left_bar = cstate->tv.margins.left;
	frame.avi.top_bar = cstate->tv.margins.top;
	frame.avi.bottom_bar = cstate->tv.margins.bottom;

	FUNC4(encoder, &frame);
}