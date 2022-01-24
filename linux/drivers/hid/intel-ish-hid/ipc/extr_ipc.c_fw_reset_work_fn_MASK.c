#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct TYPE_4__ {int recvd_hw_ready; int /*<<< orphan*/  devc; int /*<<< orphan*/  wait_hw_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMEOUT_FOR_HW_RDY_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* ishtp_dev ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct work_struct *unused)
{
	int	rv;

	rv = FUNC1(ishtp_dev);
	if (!rv) {
		/* ISH is ILUP & ISHTP-ready. Restart ISHTP */
		FUNC3(TIMEOUT_FOR_HW_RDY_MS);
		ishtp_dev->recvd_hw_ready = 1;
		FUNC4(&ishtp_dev->wait_hw_ready);

		/* ISHTP notification in IPC_RESET sequence completion */
		FUNC2(ishtp_dev);
	} else
		FUNC0(ishtp_dev->devc, "[ishtp-ish]: FW reset failed (%d)\n",
			rv);
}