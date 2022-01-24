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
struct iser_conn {int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  stop_completion; int /*<<< orphan*/ * iscsi_conn; } ;
struct iscsi_conn {struct iser_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cls_conn*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct iscsi_conn*,struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unbind_iser_conn_mutex ; 

__attribute__((used)) static void
FUNC6(struct iscsi_cls_conn *cls_conn, int flag)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct iser_conn *iser_conn = conn->dd_data;

	FUNC3("stopping iscsi_conn: %p, iser_conn: %p\n", conn, iser_conn);

	/*
	 * Userspace may have goofed up and not bound the connection or
	 * might have only partially setup the connection.
	 */
	if (iser_conn) {
		FUNC4(&iser_conn->state_mutex);
		FUNC4(&unbind_iser_conn_mutex);
		FUNC2(iser_conn);
		FUNC1(cls_conn, flag);

		/* unbind */
		iser_conn->iscsi_conn = NULL;
		conn->dd_data = NULL;
		FUNC5(&unbind_iser_conn_mutex);

		FUNC0(&iser_conn->stop_completion);
		FUNC5(&iser_conn->state_mutex);
	} else {
		FUNC1(cls_conn, flag);
	}
}