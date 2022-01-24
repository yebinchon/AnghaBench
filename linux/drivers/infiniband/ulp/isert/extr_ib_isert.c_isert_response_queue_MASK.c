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
struct isert_conn {int logout_posted; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct iscsi_cmd {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ISTATE_SEND_LOGOUTRSP 133 
#define  ISTATE_SEND_NOPIN 132 
#define  ISTATE_SEND_REJECT 131 
#define  ISTATE_SEND_STATUS 130 
#define  ISTATE_SEND_TASKMGTRSP 129 
#define  ISTATE_SEND_TEXTRSP 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC2 (struct iscsi_cmd*,struct iscsi_conn*,int) ; 
 int FUNC3 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC4 (struct iscsi_conn*,struct iscsi_cmd*) ; 
 int FUNC5 (struct iscsi_cmd*,struct iscsi_conn*) ; 
 int FUNC6 (struct iscsi_cmd*,struct iscsi_conn*) ; 

__attribute__((used)) static int
FUNC7(struct iscsi_conn *conn, struct iscsi_cmd *cmd, int state)
{
	struct isert_conn *isert_conn = conn->context;
	int ret;

	switch (state) {
	case ISTATE_SEND_LOGOUTRSP:
		ret = FUNC1(cmd, conn);
		if (!ret)
			isert_conn->logout_posted = true;
		break;
	case ISTATE_SEND_NOPIN:
		ret = FUNC2(cmd, conn, true);
		break;
	case ISTATE_SEND_TASKMGTRSP:
		ret = FUNC6(cmd, conn);
		break;
	case ISTATE_SEND_REJECT:
		ret = FUNC3(cmd, conn);
		break;
	case ISTATE_SEND_TEXTRSP:
		ret = FUNC5(cmd, conn);
		break;
	case ISTATE_SEND_STATUS:
		/*
		 * Special case for sending non GOOD SCSI status from TX thread
		 * context during pre se_cmd excecution failure.
		 */
		ret = FUNC4(conn, cmd);
		break;
	default:
		FUNC0("Unknown response state: 0x%02x\n", state);
		ret = -EINVAL;
		break;
	}

	return ret;
}