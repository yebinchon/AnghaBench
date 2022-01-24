#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct isert_conn {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  iscsi_header; struct ib_send_wr send_wr; } ;
struct isert_cmd {TYPE_1__ tx_desc; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct iscsi_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_nopin*,int) ; 
 struct isert_cmd* FUNC1 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_conn*,struct isert_cmd*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct isert_conn*,struct isert_cmd*,struct ib_send_wr*) ; 
 int /*<<< orphan*/  FUNC5 (struct isert_conn*,TYPE_1__*) ; 
 int FUNC6 (struct isert_conn*,struct isert_cmd*) ; 

__attribute__((used)) static int
FUNC7(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
		bool nopout_response)
{
	struct isert_cmd *isert_cmd = FUNC1(cmd);
	struct isert_conn *isert_conn = conn->context;
	struct ib_send_wr *send_wr = &isert_cmd->tx_desc.send_wr;

	FUNC2(isert_conn, isert_cmd, &isert_cmd->tx_desc);
	FUNC0(cmd, conn, (struct iscsi_nopin *)
			       &isert_cmd->tx_desc.iscsi_header,
			       nopout_response);
	FUNC5(isert_conn, &isert_cmd->tx_desc);
	FUNC4(isert_conn, isert_cmd, send_wr);

	FUNC3("conn %p Posting NOPIN Response\n", isert_conn);

	return FUNC6(isert_conn, isert_cmd);
}