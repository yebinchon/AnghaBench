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
struct qib_diag_client {struct qib_diag_client* next; } ;
struct qib_devdata {scalar_t__ diag_client; int /*<<< orphan*/  diag_device; int /*<<< orphan*/  diag_cdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct qib_diag_client* client_pool ; 
 int /*<<< orphan*/  diagpkt_cdev ; 
 int /*<<< orphan*/  diagpkt_count ; 
 int /*<<< orphan*/  diagpkt_device ; 
 int /*<<< orphan*/  FUNC1 (struct qib_diag_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct qib_devdata *dd)
{
	struct qib_diag_client *dc;

	if (FUNC0(&diagpkt_count))
		FUNC2(&diagpkt_cdev, &diagpkt_device);

	FUNC2(&dd->diag_cdev, &dd->diag_device);

	/*
	 * Return all diag_clients of this device. There should be none,
	 * as we are "guaranteed" that no clients are still open
	 */
	while (dd->diag_client)
		FUNC4(dd->diag_client);

	/* Now clean up all unused client structs */
	while (client_pool) {
		dc = client_pool;
		client_pool = dc->next;
		FUNC1(dc);
	}
	/* Clean up observer list */
	FUNC3(dd);
}