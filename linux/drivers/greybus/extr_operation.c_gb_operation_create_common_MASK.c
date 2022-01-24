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
typedef  int /*<<< orphan*/  u8 ;
struct gb_operation {unsigned long flags; TYPE_1__* request; int /*<<< orphan*/  waiters; int /*<<< orphan*/  kref; int /*<<< orphan*/  completion; int /*<<< orphan*/  work; int /*<<< orphan*/  errno; int /*<<< orphan*/  type; int /*<<< orphan*/  timer; struct gb_connection* connection; } ;
struct gb_host_device {int dummy; } ;
struct gb_connection {struct gb_host_device* hd; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {struct gb_operation* operation; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADR ; 
 unsigned long GB_OPERATION_FLAG_INCOMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gb_operation_cache ; 
 TYPE_1__* FUNC2 (struct gb_host_device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_operation*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gb_operation_timeout ; 
 int /*<<< orphan*/  gb_operation_work ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct gb_operation*) ; 
 struct gb_operation* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gb_operation *
FUNC10(struct gb_connection *connection, u8 type,
			   size_t request_size, size_t response_size,
			   unsigned long op_flags, gfp_t gfp_flags)
{
	struct gb_host_device *hd = connection->hd;
	struct gb_operation *operation;

	operation = FUNC7(gb_operation_cache, gfp_flags);
	if (!operation)
		return NULL;
	operation->connection = connection;

	operation->request = FUNC2(hd, type, request_size,
							gfp_flags);
	if (!operation->request)
		goto err_cache;
	operation->request->operation = operation;

	/* Allocate the response buffer for outgoing operations */
	if (!(op_flags & GB_OPERATION_FLAG_INCOMING)) {
		if (!FUNC4(operation, response_size,
						 gfp_flags)) {
			goto err_request;
		}

		FUNC9(&operation->timer, gb_operation_timeout, 0);
	}

	operation->flags = op_flags;
	operation->type = type;
	operation->errno = -EBADR;  /* Initial value--means "never set" */

	FUNC0(&operation->work, gb_operation_work);
	FUNC5(&operation->completion);
	FUNC8(&operation->kref);
	FUNC1(&operation->waiters, 0);

	return operation;

err_request:
	FUNC3(operation->request);
err_cache:
	FUNC6(gb_operation_cache, operation);

	return NULL;
}