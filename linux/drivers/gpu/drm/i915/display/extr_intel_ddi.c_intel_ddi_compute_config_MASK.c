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
struct intel_encoder {int port; TYPE_2__ base; } ;
struct TYPE_6__ {int force_thru; scalar_t__ enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ cpu_transcoder; int /*<<< orphan*/  lane_count; int /*<<< orphan*/  lane_lat_optim_mask; scalar_t__ crc_enabled; TYPE_3__ pch_pfit; TYPE_1__ base; } ;
struct intel_crtc {scalar_t__ pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ PIPE_A ; 
 int PORT_A ; 
 scalar_t__ TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,struct intel_crtc_state*) ; 
 int FUNC6 (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*) ; 
 int FUNC7 (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct intel_encoder *encoder,
				    struct intel_crtc_state *pipe_config,
				    struct drm_connector_state *conn_state)
{
	struct intel_crtc *crtc = FUNC9(pipe_config->base.crtc);
	struct drm_i915_private *dev_priv = FUNC8(encoder->base.dev);
	enum port port = encoder->port;
	int ret;

	if (FUNC0(dev_priv) && port == PORT_A)
		pipe_config->cpu_transcoder = TRANSCODER_EDP;

	if (FUNC4(pipe_config, INTEL_OUTPUT_HDMI))
		ret = FUNC7(encoder, pipe_config, conn_state);
	else
		ret = FUNC6(encoder, pipe_config, conn_state);
	if (ret)
		return ret;

	if (FUNC2(dev_priv) && crtc->pipe == PIPE_A &&
	    pipe_config->cpu_transcoder == TRANSCODER_EDP)
		pipe_config->pch_pfit.force_thru =
			pipe_config->pch_pfit.enabled ||
			pipe_config->crc_enabled;

	if (FUNC1(dev_priv))
		pipe_config->lane_lat_optim_mask =
			FUNC3(pipe_config->lane_count);

	FUNC5(dev_priv, pipe_config);

	return 0;
}