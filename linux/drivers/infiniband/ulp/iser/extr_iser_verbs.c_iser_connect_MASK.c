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
struct sockaddr {int dummy; } ;
struct ib_conn {int /*<<< orphan*/ * cma_id; int /*<<< orphan*/ * device; } ;
struct iser_conn {scalar_t__ state; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  up_completion; int /*<<< orphan*/  name; struct ib_conn ib_conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  connlist_mutex; int /*<<< orphan*/  connlist; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 scalar_t__ ISER_CONN_DOWN ; 
 scalar_t__ ISER_CONN_PENDING ; 
 scalar_t__ ISER_CONN_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 TYPE_1__ ig ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  iser_cma_handler ; 
 int /*<<< orphan*/  FUNC2 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct iser_conn   *iser_conn,
		 struct sockaddr    *src_addr,
		 struct sockaddr    *dst_addr,
		 int                 non_blocking)
{
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	int err = 0;

	FUNC6(&iser_conn->state_mutex);

	FUNC10(iser_conn->name, "%pISp", dst_addr);

	FUNC4("connecting to: %s\n", iser_conn->name);

	/* the device is known only --after-- address resolution */
	ib_conn->device = NULL;

	iser_conn->state = ISER_CONN_PENDING;

	ib_conn->cma_id = FUNC8(&init_net, iser_cma_handler,
					 (void *)iser_conn,
					 RDMA_PS_TCP, IB_QPT_RC);
	if (FUNC0(ib_conn->cma_id)) {
		err = FUNC1(ib_conn->cma_id);
		FUNC3("rdma_create_id failed: %d\n", err);
		goto id_failure;
	}

	err = FUNC9(ib_conn->cma_id, src_addr, dst_addr, 1000);
	if (err) {
		FUNC3("rdma_resolve_addr failed: %d\n", err);
		goto addr_failure;
	}

	if (!non_blocking) {
		FUNC11(&iser_conn->up_completion);

		if (iser_conn->state != ISER_CONN_UP) {
			err =  -EIO;
			goto connect_failure;
		}
	}
	FUNC7(&iser_conn->state_mutex);

	FUNC6(&ig.connlist_mutex);
	FUNC5(&iser_conn->conn_list, &ig.connlist);
	FUNC7(&ig.connlist_mutex);
	return 0;

id_failure:
	ib_conn->cma_id = NULL;
addr_failure:
	iser_conn->state = ISER_CONN_DOWN;
connect_failure:
	FUNC7(&iser_conn->state_mutex);
	FUNC2(iser_conn);
	return err;
}