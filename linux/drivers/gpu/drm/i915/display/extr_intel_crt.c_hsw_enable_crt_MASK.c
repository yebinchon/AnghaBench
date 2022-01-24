#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_pch_encoder; TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder,
			   const struct intel_crtc_state *crtc_state,
			   const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC5(encoder->base.dev);
	struct intel_crtc *crtc = FUNC6(crtc_state->base.crtc);
	enum pipe pipe = crtc->pipe;

	FUNC0(!crtc_state->has_pch_encoder);

	FUNC1(encoder, crtc_state, DRM_MODE_DPMS_ON);

	FUNC4(dev_priv, pipe);
	FUNC4(dev_priv, pipe);
	FUNC2(dev_priv, pipe, true);
	FUNC3(dev_priv, PIPE_A, true);
}