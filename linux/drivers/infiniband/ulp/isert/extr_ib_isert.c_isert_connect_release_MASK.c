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
struct isert_device {int dummy; } ;
struct isert_conn {int /*<<< orphan*/  rem_wait; scalar_t__ dev_removed; scalar_t__ login_req_buf; TYPE_2__* qp; scalar_t__ cm_id; struct isert_device* device; } ;
struct isert_comp {int dummy; } ;
struct TYPE_4__ {TYPE_1__* recv_cq; } ;
struct TYPE_3__ {struct isert_comp* cq_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_comp*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct isert_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct isert_conn *isert_conn)
{
	struct isert_device *device = isert_conn->device;

	FUNC3("conn %p\n", isert_conn);

	FUNC0(!device);

	FUNC6(isert_conn);
	if (isert_conn->cm_id &&
	    !isert_conn->dev_removed)
		FUNC8(isert_conn->cm_id);

	if (isert_conn->qp) {
		struct isert_comp *comp = isert_conn->qp->recv_cq->cq_context;

		FUNC2(comp);
		FUNC1(isert_conn->qp);
	}

	if (isert_conn->login_req_buf)
		FUNC5(isert_conn);

	FUNC4(device);

	if (isert_conn->dev_removed)
		FUNC9(&isert_conn->rem_wait);
	else
		FUNC7(isert_conn);
}