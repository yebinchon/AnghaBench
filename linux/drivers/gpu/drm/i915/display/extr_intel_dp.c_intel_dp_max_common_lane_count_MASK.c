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
struct intel_dp {int /*<<< orphan*/  dpcd; } ;
struct intel_digital_port {int max_lanes; } ;

/* Variables and functions */
 struct intel_digital_port* FUNC0 (struct intel_dp*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct intel_digital_port*) ; 
 int FUNC3 (int,int,int) ; 

__attribute__((used)) static int FUNC4(struct intel_dp *intel_dp)
{
	struct intel_digital_port *intel_dig_port = FUNC0(intel_dp);
	int source_max = intel_dig_port->max_lanes;
	int sink_max = FUNC1(intel_dp->dpcd);
	int fia_max = FUNC2(intel_dig_port);

	return FUNC3(source_max, sink_max, fia_max);
}