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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IPC_TX_MBOX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipc_completion ; 
 int /*<<< orphan*/  ipc_m1_lock ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(u32 *data)
{
	int ret;

	FUNC4(&ipc_m1_lock);

	FUNC2(&ipc_completion);
	FUNC1(IPC_TX_MBOX, data);
	ret = FUNC6(&ipc_completion,
					  FUNC3(1000));
	if (ret == 0) {
		ret = -ETIMEDOUT;
		goto out;
	}

	ret = FUNC0(IPC_TX_MBOX, data);
out:
	FUNC5(&ipc_m1_lock);
	return ret;
}