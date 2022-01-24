#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_7__ base; } ;
struct intel_dp {struct intel_connector* attached_connector; } ;
struct TYPE_12__ {int /*<<< orphan*/  active; } ;
struct intel_crtc_state {scalar_t__ has_pch_encoder; TYPE_5__ base; } ;
struct TYPE_11__ {int /*<<< orphan*/  state; int /*<<< orphan*/  mutex; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_4__ base; } ;
struct TYPE_10__ {scalar_t__ status; struct drm_connector_state* state; } ;
struct intel_connector {TYPE_3__ base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  connection_mutex; } ;
struct TYPE_9__ {TYPE_1__ mode_config; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct drm_connector_state {TYPE_6__* commit; int /*<<< orphan*/  crtc; } ;
struct TYPE_13__ {int /*<<< orphan*/  hw_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ connector_status_connected ; 
 int FUNC1 (int /*<<< orphan*/ *,struct drm_modeset_acquire_ctx*) ; 
 struct intel_dp* FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC11 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC12 (int /*<<< orphan*/ ) ; 
 struct intel_crtc_state* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct intel_encoder *encoder,
			  struct drm_modeset_acquire_ctx *ctx)
{
	struct drm_i915_private *dev_priv = FUNC11(encoder->base.dev);
	struct intel_dp *intel_dp = FUNC2(&encoder->base);
	struct intel_connector *connector = intel_dp->attached_connector;
	struct drm_connector_state *conn_state;
	struct intel_crtc_state *crtc_state;
	struct intel_crtc *crtc;
	int ret;

	/* FIXME handle the MST connectors as well */

	if (!connector || connector->base.status != connector_status_connected)
		return 0;

	ret = FUNC1(&dev_priv->drm.mode_config.connection_mutex,
			       ctx);
	if (ret)
		return ret;

	conn_state = connector->base.state;

	crtc = FUNC12(conn_state->crtc);
	if (!crtc)
		return 0;

	ret = FUNC1(&crtc->base.mutex, ctx);
	if (ret)
		return ret;

	crtc_state = FUNC13(crtc->base.state);

	FUNC0(!FUNC3(crtc_state));

	if (!crtc_state->base.active)
		return 0;

	if (conn_state->commit &&
	    !FUNC14(&conn_state->commit->hw_done))
		return 0;

	if (!FUNC5(intel_dp))
		return 0;

	/* Suppress underruns caused by re-training */
	FUNC8(dev_priv, crtc->pipe, false);
	if (crtc_state->has_pch_encoder)
		FUNC9(dev_priv,
						      FUNC4(crtc), false);

	FUNC6(intel_dp);
	FUNC7(intel_dp);

	/* Keep underrun reporting disabled until things are stable */
	FUNC10(dev_priv, crtc->pipe);

	FUNC8(dev_priv, crtc->pipe, true);
	if (crtc_state->has_pch_encoder)
		FUNC9(dev_priv,
						      FUNC4(crtc), true);

	return 0;
}