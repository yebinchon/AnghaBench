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
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 TYPE_1__ vmbus_connection ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct pt_regs *regs)
{
	int cpu;

	FUNC4(true);
	/*
	 * In crash handler we can't schedule synic cleanup for all CPUs,
	 * doing the cleanup for current CPU only. This should be sufficient
	 * for kdump.
	 */
	vmbus_connection.conn_state = DISCONNECTED;
	cpu = FUNC3();
	FUNC0(cpu);
	FUNC1(cpu);
	FUNC2();
}