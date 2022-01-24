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
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_dp {int DP; int /*<<< orphan*/  lane_count; } ;
struct intel_digital_port {int saved_port_bits; } ;

/* Variables and functions */
 int DDI_BUF_CTL_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC2 (int /*<<< orphan*/ *) ; 
 struct intel_dp* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct intel_encoder *encoder)
{
	struct intel_dp *intel_dp = FUNC3(&encoder->base);
	struct intel_digital_port *intel_dig_port =
		FUNC2(&encoder->base);

	intel_dp->DP = intel_dig_port->saved_port_bits |
		DDI_BUF_CTL_ENABLE | FUNC0(0);
	intel_dp->DP |= FUNC1(intel_dp->lane_count);
}