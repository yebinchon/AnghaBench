#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iser_device {int dummy; } ;
struct ib_conn {struct iser_device* device; int /*<<< orphan*/ * qp; int /*<<< orphan*/  cma_id; TYPE_1__* comp; } ;
struct iser_conn {scalar_t__ rx_descs; struct ib_conn ib_conn; } ;
struct TYPE_4__ {int /*<<< orphan*/  connlist_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  active_qps; } ;

/* Variables and functions */
 TYPE_2__ ig ; 
 int /*<<< orphan*/  FUNC0 (struct iser_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct iser_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct iser_conn *iser_conn,
				  bool destroy)
{
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	struct iser_device *device = ib_conn->device;

	FUNC2("freeing conn %p cma_id %p qp %p\n",
		  iser_conn, ib_conn->cma_id, ib_conn->qp);

	if (ib_conn->qp != NULL) {
		FUNC3(&ig.connlist_mutex);
		ib_conn->comp->active_qps--;
		FUNC4(&ig.connlist_mutex);
		FUNC5(ib_conn->cma_id);
		ib_conn->qp = NULL;
	}

	if (destroy) {
		if (iser_conn->rx_descs)
			FUNC1(iser_conn);

		if (device != NULL) {
			FUNC0(device);
			ib_conn->device = NULL;
		}
	}
}