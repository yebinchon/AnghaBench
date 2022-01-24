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
struct TYPE_2__ {int /*<<< orphan*/  conn_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hyperv_cpuhp_online ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ vmbus_connection ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC1();
	FUNC4(false);
	vmbus_connection.conn_state = DISCONNECTED;
	/* Make sure conn_state is set as hv_synic_cleanup checks for it */
	FUNC3();
	FUNC0(hyperv_cpuhp_online);
	FUNC2();
}