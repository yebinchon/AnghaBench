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
struct isert_conn {int /*<<< orphan*/  login_comp; int /*<<< orphan*/  login_req_comp; struct isert_conn* context; } ;
struct iscsi_login {struct isert_conn* req; int /*<<< orphan*/  first_request; } ;
struct iscsi_conn {int /*<<< orphan*/  login_comp; int /*<<< orphan*/  login_req_comp; struct iscsi_conn* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct iscsi_conn *conn, struct iscsi_login *login)
{
	struct isert_conn *isert_conn = conn->context;
	int ret;

	FUNC1("before login_req comp conn: %p\n", isert_conn);
	ret = FUNC4(&isert_conn->login_req_comp);
	if (ret) {
		FUNC0("isert_conn %p interrupted before got login req\n",
			  isert_conn);
		return ret;
	}
	FUNC3(&isert_conn->login_req_comp);

	/*
	 * For login requests after the first PDU, isert_rx_login_req() will
	 * kick schedule_delayed_work(&conn->login_work) as the packet is
	 * received, which turns this callback from iscsi_target_do_login_rx()
	 * into a NOP.
	 */
	if (!login->first_request)
		return 0;

	FUNC2(isert_conn);

	FUNC1("before login_comp conn: %p\n", conn);
	ret = FUNC4(&isert_conn->login_comp);
	if (ret)
		return ret;

	FUNC1("processing login->req: %p\n", login->req);

	return 0;
}