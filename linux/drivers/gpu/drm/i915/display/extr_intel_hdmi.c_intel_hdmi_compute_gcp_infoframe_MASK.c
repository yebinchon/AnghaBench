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
struct TYPE_6__ {int /*<<< orphan*/  gcp; int /*<<< orphan*/  enable; } ;
struct TYPE_4__ {int /*<<< orphan*/  adjusted_mode; } ;
struct intel_crtc_state {int pipe_bpp; TYPE_3__ infoframes; TYPE_1__ base; int /*<<< orphan*/  has_infoframe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCP_COLOR_INDICATION ; 
 int /*<<< orphan*/  GCP_DEFAULT_PHASE_ENABLE ; 
 int /*<<< orphan*/  HDMI_PACKET_TYPE_GENERAL_CONTROL ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct intel_encoder *encoder,
					     struct intel_crtc_state *crtc_state,
					     struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC3(encoder->base.dev);

	if (FUNC0(dev_priv) || !crtc_state->has_infoframe)
		return;

	crtc_state->infoframes.enable |=
		FUNC2(HDMI_PACKET_TYPE_GENERAL_CONTROL);

	/* Indicate color indication for deep color mode */
	if (crtc_state->pipe_bpp > 24)
		crtc_state->infoframes.gcp |= GCP_COLOR_INDICATION;

	/* Enable default_phase whenever the display mode is suitably aligned */
	if (FUNC1(crtc_state->pipe_bpp,
				       &crtc_state->base.adjusted_mode))
		crtc_state->infoframes.gcp |= GCP_DEFAULT_PHASE_ENABLE;
}