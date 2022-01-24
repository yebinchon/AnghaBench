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
struct isert_conn {int dummy; } ;
struct isert_cmd {int dummy; } ;
struct iscsi_conn {int /*<<< orphan*/  cmd_lock; struct isert_conn* context; } ;
struct iscsi_cmd {scalar_t__ data_direction; int /*<<< orphan*/  i_conn_node; } ;

/* Variables and functions */
 scalar_t__ DMA_TO_DEVICE ; 
 struct isert_cmd* FUNC0 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_cmd*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
	struct isert_cmd *isert_cmd = FUNC0(cmd);
	struct isert_conn *isert_conn = conn->context;

	FUNC5(&conn->cmd_lock);
	if (!FUNC4(&cmd->i_conn_node))
		FUNC3(&cmd->i_conn_node);
	FUNC6(&conn->cmd_lock);

	if (cmd->data_direction == DMA_TO_DEVICE)
		FUNC1(cmd);
	FUNC2(isert_cmd, isert_conn);
}