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
struct intel_dp {scalar_t__ active_pipe; scalar_t__ pps_pipe; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_PIPE ; 
 int PIPE_A ; 
 scalar_t__ FUNC1 (int) ; 
 struct intel_digital_port* FUNC2 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int) ; 

__attribute__((used)) static enum pipe
FUNC13(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC3(intel_dp);
	struct intel_digital_port *intel_dig_port = FUNC2(intel_dp);
	enum pipe pipe;

	FUNC7(&dev_priv->pps_mutex);

	/* We should never land here with regular DP ports */
	FUNC1(!FUNC6(intel_dp));

	FUNC1(intel_dp->active_pipe != INVALID_PIPE &&
		intel_dp->active_pipe != intel_dp->pps_pipe);

	if (intel_dp->pps_pipe != INVALID_PIPE)
		return intel_dp->pps_pipe;

	pipe = FUNC10(dev_priv);

	/*
	 * Didn't find one. This should not happen since there
	 * are two power sequencers and up to two eDP ports.
	 */
	if (FUNC1(pipe == INVALID_PIPE))
		pipe = PIPE_A;

	FUNC12(dev_priv, pipe);
	intel_dp->pps_pipe = pipe;

	FUNC0("picked pipe %c power sequencer for port %c\n",
		      FUNC8(intel_dp->pps_pipe),
		      FUNC9(intel_dig_port->base.port));

	/* init power sequencer on this pipe and port */
	FUNC4(intel_dp);
	FUNC5(intel_dp, true);

	/*
	 * Even vdd force doesn't work until we've made
	 * the power sequencer lock in on the port.
	 */
	FUNC11(intel_dp);

	return intel_dp->pps_pipe;
}