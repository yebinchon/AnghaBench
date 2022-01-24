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
struct intel_guc {int /*<<< orphan*/  ct; int /*<<< orphan*/  handler; int /*<<< orphan*/  send; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_guc_send_nop ; 
 int /*<<< orphan*/  intel_guc_to_host_event_handler_nop ; 

__attribute__((used)) static void FUNC5(struct intel_guc *guc)
{
	/*
	 * Events generated during or after CT disable are logged by guc in
	 * via mmio. Make sure the register is clear before disabling CT since
	 * all events we cared about have already been processed via CT.
	 */
	FUNC1(guc);

	FUNC2(guc);

	guc->send = intel_guc_send_nop;
	guc->handler = intel_guc_to_host_event_handler_nop;

	FUNC4(&guc->ct);

	/*
	 * Check for messages received during/after the CT disable. We do not
	 * expect any messages to have arrived via CT between the interrupt
	 * disable and the CT disable because GuC should've been idle until we
	 * triggered the CT disable protocol.
	 */
	FUNC3(guc);

	FUNC0("GuC communication disabled\n");
}