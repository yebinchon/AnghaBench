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
struct intel_dp {int pps_pipe; scalar_t__ active_pipe; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_PIPE ; 
 int PIPE_A ; 
 int PIPE_B ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 struct intel_digital_port* FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct intel_dp *intel_dp)
{
	struct intel_digital_port *intel_dig_port = FUNC5(intel_dp);
	struct drm_i915_private *dev_priv = FUNC9(intel_dig_port->base.base.dev);
	enum pipe pipe = intel_dp->pps_pipe;
	i915_reg_t pp_on_reg = FUNC3(pipe);

	FUNC4(intel_dp->active_pipe != INVALID_PIPE);

	if (FUNC4(pipe != PIPE_A && pipe != PIPE_B))
		return;

	FUNC6(intel_dp);

	/*
	 * VLV seems to get confused when multiple power sequencers
	 * have the same port selected (even if only one has power/vdd
	 * enabled). The failure manifests as vlv_wait_port_ready() failing
	 * CHV on the other hand doesn't seem to mind having the same port
	 * selected in multiple power sequencers, but let's clear the
	 * port select always when logically disconnecting a power sequencer
	 * from a port.
	 */
	FUNC0("detaching pipe %c power sequencer from port %c\n",
		      FUNC7(pipe), FUNC8(intel_dig_port->base.port));
	FUNC1(pp_on_reg, 0);
	FUNC2(pp_on_reg);

	intel_dp->pps_pipe = INVALID_PIPE;
}