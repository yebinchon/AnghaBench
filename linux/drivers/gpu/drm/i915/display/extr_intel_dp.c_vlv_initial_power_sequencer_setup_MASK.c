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
struct intel_dp {scalar_t__ pps_pipe; } ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ INVALID_PIPE ; 
 struct intel_digital_port* FUNC1 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 void* FUNC8 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlv_pipe_any ; 
 int /*<<< orphan*/  vlv_pipe_has_pp_on ; 
 int /*<<< orphan*/  vlv_pipe_has_vdd_on ; 

__attribute__((used)) static void
FUNC9(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC2(intel_dp);
	struct intel_digital_port *intel_dig_port = FUNC1(intel_dp);
	enum port port = intel_dig_port->base.port;

	FUNC5(&dev_priv->pps_mutex);

	/* try to find a pipe with this port selected */
	/* first pick one where the panel is on */
	intel_dp->pps_pipe = FUNC8(dev_priv, port,
						  vlv_pipe_has_pp_on);
	/* didn't find one? pick one where vdd is on */
	if (intel_dp->pps_pipe == INVALID_PIPE)
		intel_dp->pps_pipe = FUNC8(dev_priv, port,
							  vlv_pipe_has_vdd_on);
	/* didn't find one? pick one with just the correct port */
	if (intel_dp->pps_pipe == INVALID_PIPE)
		intel_dp->pps_pipe = FUNC8(dev_priv, port,
							  vlv_pipe_any);

	/* didn't find one? just let vlv_power_sequencer_pipe() pick one when needed */
	if (intel_dp->pps_pipe == INVALID_PIPE) {
		FUNC0("no initial power sequencer for port %c\n",
			      FUNC7(port));
		return;
	}

	FUNC0("initial power sequencer for port %c: pipe %c\n",
		      FUNC7(port), FUNC6(intel_dp->pps_pipe));

	FUNC3(intel_dp);
	FUNC4(intel_dp, false);
}