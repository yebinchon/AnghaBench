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
typedef  scalar_t__ u16 ;
struct gb_operation_msg_hdr {int /*<<< orphan*/  operation_id; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct gb_operation {TYPE_2__ timer; TYPE_1__* request; scalar_t__ id; scalar_t__ callback; struct gb_connection* connection; } ;
struct gb_connection {int /*<<< orphan*/  op_cycle; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ gb_operation_callback ;
struct TYPE_3__ {struct gb_operation_msg_hdr* header; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int EINVAL ; 
 unsigned int U16_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct gb_connection*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_operation*) ; 
 int FUNC6 (struct gb_operation*) ; 
 scalar_t__ FUNC7 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_operation*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC11 (unsigned int) ; 

int FUNC12(struct gb_operation *operation,
			      gb_operation_callback callback,
			      unsigned int timeout,
			      gfp_t gfp)
{
	struct gb_connection *connection = operation->connection;
	struct gb_operation_msg_hdr *header;
	unsigned int cycle;
	int ret;

	if (FUNC3(connection))
		return -EBUSY;

	if (!callback)
		return -EINVAL;

	/*
	 * Record the callback function, which is executed in
	 * non-atomic (workqueue) context when the final result
	 * of an operation has been set.
	 */
	operation->callback = callback;

	/*
	 * Assign the operation's id, and store it in the request header.
	 * Zero is a reserved operation id for unidirectional operations.
	 */
	if (FUNC7(operation)) {
		operation->id = 0;
	} else {
		cycle = (unsigned int)FUNC1(&connection->op_cycle);
		operation->id = (u16)(cycle % U16_MAX + 1);
	}

	header = operation->request->header;
	header->operation_id = FUNC2(operation->id);

	FUNC10(operation, -EINPROGRESS);

	/*
	 * Get an extra reference on the operation. It'll be dropped when the
	 * operation completes.
	 */
	FUNC5(operation);
	ret = FUNC6(operation);
	if (ret)
		goto err_put;

	ret = FUNC4(operation->request, gfp);
	if (ret)
		goto err_put_active;

	if (timeout) {
		operation->timer.expires = jiffies + FUNC11(timeout);
		FUNC0(&operation->timer);
	}

	return 0;

err_put_active:
	FUNC9(operation);
err_put:
	FUNC8(operation);

	return ret;
}