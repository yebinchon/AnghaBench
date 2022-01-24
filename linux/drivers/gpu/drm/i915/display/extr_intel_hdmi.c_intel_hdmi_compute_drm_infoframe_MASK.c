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
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_3__ base; } ;
struct hdmi_drm_infoframe {int dummy; } ;
struct TYPE_4__ {struct hdmi_drm_infoframe drm; } ;
struct TYPE_5__ {int /*<<< orphan*/  enable; TYPE_1__ drm; } ;
struct intel_crtc_state {TYPE_2__ infoframes; int /*<<< orphan*/  has_infoframe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  hdr_output_metadata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_TYPE_DRM ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct hdmi_drm_infoframe*,struct drm_connector_state*) ; 
 int FUNC5 (struct hdmi_drm_infoframe*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(struct intel_encoder *encoder,
				 struct intel_crtc_state *crtc_state,
				 struct drm_connector_state *conn_state)
{
	struct hdmi_drm_infoframe *frame = &crtc_state->infoframes.drm.drm;
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	int ret;

	if (!(FUNC1(dev_priv) >= 10 || FUNC2(dev_priv)))
		return true;

	if (!crtc_state->has_infoframe)
		return true;

	if (!conn_state->hdr_output_metadata)
		return true;

	crtc_state->infoframes.enable |=
		FUNC6(HDMI_INFOFRAME_TYPE_DRM);

	ret = FUNC4(frame, conn_state);
	if (ret < 0) {
		FUNC0("couldn't set HDR metadata in infoframe\n");
		return false;
	}

	ret = FUNC5(frame);
	if (FUNC3(ret))
		return false;

	return true;
}