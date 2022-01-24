#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_encoder {int port; int /*<<< orphan*/  base; } ;
struct intel_dp {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int PORT_A ; 
 struct intel_dp* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*,struct intel_crtc_state const*) ; 

__attribute__((used)) static void FUNC3(struct intel_encoder *encoder,
				const struct intel_crtc_state *old_crtc_state,
				const struct drm_connector_state *old_conn_state)
{
	struct intel_dp *intel_dp = FUNC0(&encoder->base);
	enum port port = encoder->port;

	/*
	 * Bspec does not list a specific disable sequence for g4x DP.
	 * Follow the ilk+ sequence (disable pipe before the port) for
	 * g4x DP as it does not suffer from underruns like the normal
	 * g4x modeset sequence (disable pipe after the port).
	 */
	FUNC1(encoder, old_crtc_state);

	/* Only ilk+ has port A */
	if (port == PORT_A)
		FUNC2(intel_dp, old_crtc_state);
}