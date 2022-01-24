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
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_4__ {int enable; int /*<<< orphan*/  gcp; } ;
struct TYPE_6__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ infoframes; int /*<<< orphan*/  cpu_transcoder; TYPE_3__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  HDMI_PACKET_TYPE_GENERAL_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct intel_encoder *encoder,
					 const struct intel_crtc_state *crtc_state,
					 const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC9(encoder->base.dev);
	struct intel_crtc *crtc = FUNC10(crtc_state->base.crtc);
	i915_reg_t reg;

	if ((crtc_state->infoframes.enable &
	     FUNC8(HDMI_PACKET_TYPE_GENERAL_CONTROL)) == 0)
		return false;

	if (FUNC0(dev_priv))
		reg = FUNC2(crtc_state->cpu_transcoder);
	else if (FUNC5(dev_priv) || FUNC4(dev_priv))
		reg = FUNC7(crtc->pipe);
	else if (FUNC1(dev_priv))
		reg = FUNC6(crtc->pipe);
	else
		return false;

	FUNC3(reg, crtc_state->infoframes.gcp);

	return true;
}