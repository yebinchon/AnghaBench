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
struct gb_operation {int /*<<< orphan*/  waiters; int /*<<< orphan*/  response; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gb_operation_cancellation_queue ; 
 int /*<<< orphan*/  FUNC5 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_operation*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void FUNC11(struct gb_operation *operation, int errno)
{
	if (FUNC0(!FUNC6(operation)))
		return;

	if (!FUNC7(operation)) {
		/*
		 * Make sure the request handler has submitted the response
		 * before cancelling it.
		 */
		FUNC3(&operation->work);
		if (!FUNC8(operation, errno))
			FUNC4(operation->response);
	}
	FUNC9(operation->response);

	FUNC2(&operation->waiters);
	FUNC10(gb_operation_cancellation_queue,
		   !FUNC5(operation));
	FUNC1(&operation->waiters);
}