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
struct isert_conn {scalar_t__ logout_posted; struct iscsi_conn* conn; } ;
struct iscsi_conn {int /*<<< orphan*/  conn_logout_comp; } ;

/* Variables and functions */
 int HZ ; 
 int SECONDS_FOR_LOGOUT_COMP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct isert_conn *isert_conn)
{
	struct iscsi_conn *conn = isert_conn->conn;

	FUNC0("conn %p\n", isert_conn);

	if (isert_conn->logout_posted) {
		FUNC0("conn %p wait for conn_logout_comp\n", isert_conn);
		FUNC1(&conn->conn_logout_comp,
					    SECONDS_FOR_LOGOUT_COMP * HZ);
	}
}