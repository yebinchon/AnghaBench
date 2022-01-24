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
struct TYPE_2__ {int /*<<< orphan*/ * sk6; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ recv_sockets ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  rxe_net_notifier ; 

int FUNC5(void)
{
	int err;

	recv_sockets.sk6 = NULL;

	err = FUNC3();
	if (err)
		return err;
	err = FUNC4();
	if (err)
		goto err_out;
	err = FUNC1(&rxe_net_notifier);
	if (err) {
		FUNC0("Failed to register netdev notifier\n");
		goto err_out;
	}
	return 0;
err_out:
	FUNC2();
	return err;
}