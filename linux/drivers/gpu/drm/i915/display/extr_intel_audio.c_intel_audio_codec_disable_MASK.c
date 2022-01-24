#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; int /*<<< orphan*/ * audio_connector; TYPE_1__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct TYPE_10__ {TYPE_4__* audio_ops; } ;
struct i915_audio_component {TYPE_5__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* audio_codec_disable ) (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct drm_i915_private {int /*<<< orphan*/  av_mutex; int /*<<< orphan*/ ** av_enc_map; TYPE_3__ display; struct i915_audio_component* audio_component; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_9__ {int /*<<< orphan*/  audio_ptr; int /*<<< orphan*/  (* pin_eld_notify ) (int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_OUTPUT_DP_MST ; 
 int /*<<< orphan*/  FUNC0 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct intel_encoder *encoder,
			       const struct intel_crtc_state *old_crtc_state,
			       const struct drm_connector_state *old_conn_state)
{
	struct drm_i915_private *dev_priv = FUNC6(encoder->base.dev);
	struct i915_audio_component *acomp = dev_priv->audio_component;
	struct intel_crtc *crtc = FUNC7(old_crtc_state->base.crtc);
	enum port port = encoder->port;
	enum pipe pipe = crtc->pipe;

	if (dev_priv->display.audio_codec_disable)
		dev_priv->display.audio_codec_disable(encoder,
						      old_crtc_state,
						      old_conn_state);

	FUNC2(&dev_priv->av_mutex);
	encoder->audio_connector = NULL;
	dev_priv->av_enc_map[pipe] = NULL;
	FUNC3(&dev_priv->av_mutex);

	if (acomp && acomp->base.audio_ops &&
	    acomp->base.audio_ops->pin_eld_notify) {
		/* audio drivers expect pipe = -1 to indicate Non-MST cases */
		if (!FUNC0(old_crtc_state, INTEL_OUTPUT_DP_MST))
			pipe = -1;
		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
						 (int) port, (int) pipe);
	}

	FUNC1(dev_priv, pipe, port, NULL, 0, false);
}