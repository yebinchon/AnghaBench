#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  done; } ;
struct ib_conn {TYPE_1__ reg_cqe; scalar_t__ post_recv_buf_count; } ;
struct iser_conn {int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  up_completion; int /*<<< orphan*/  ib_completion; int /*<<< orphan*/  stop_completion; int /*<<< orphan*/  state; struct ib_conn ib_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISER_CONN_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iser_reg_comp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iser_conn *iser_conn)
{
	struct ib_conn *ib_conn = &iser_conn->ib_conn;

	iser_conn->state = ISER_CONN_INIT;
	FUNC1(&iser_conn->stop_completion);
	FUNC1(&iser_conn->ib_completion);
	FUNC1(&iser_conn->up_completion);
	FUNC0(&iser_conn->conn_list);
	FUNC2(&iser_conn->state_mutex);

	ib_conn->post_recv_buf_count = 0;
	ib_conn->reg_cqe.done = iser_reg_comp;
}