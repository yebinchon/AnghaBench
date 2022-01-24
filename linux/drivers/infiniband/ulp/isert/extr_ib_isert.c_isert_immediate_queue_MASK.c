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
struct isert_cmd {int dummy; } ;
struct iscsi_conn {int /*<<< orphan*/  cmd_lock; } ;
struct iscsi_cmd {int /*<<< orphan*/  i_conn_node; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ISTATE_REMOVE 129 
#define  ISTATE_SEND_NOPIN_WANT_RESPONSE 128 
 struct isert_cmd* FUNC0 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_cmd*,int) ; 
 int FUNC3 (struct iscsi_cmd*,struct iscsi_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct iscsi_conn *conn, struct iscsi_cmd *cmd, int state)
{
	struct isert_cmd *isert_cmd = FUNC0(cmd);
	int ret = 0;

	switch (state) {
	case ISTATE_REMOVE:
		FUNC5(&conn->cmd_lock);
		FUNC4(&cmd->i_conn_node);
		FUNC6(&conn->cmd_lock);
		FUNC2(isert_cmd, true);
		break;
	case ISTATE_SEND_NOPIN_WANT_RESPONSE:
		ret = FUNC3(cmd, conn, false);
		break;
	default:
		FUNC1("Unknown immediate state: 0x%02x\n", state);
		ret = -EINVAL;
		break;
	}

	return ret;
}