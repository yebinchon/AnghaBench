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
struct gb_operation {int /*<<< orphan*/  waiters; int /*<<< orphan*/  request; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gb_operation_cancellation_queue ; 
 int /*<<< orphan*/  gb_operation_completion_wq ; 
 int /*<<< orphan*/  FUNC4 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_operation*) ; 
 scalar_t__ FUNC6 (struct gb_operation*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

void FUNC10(struct gb_operation *operation, int errno)
{
	if (FUNC0(FUNC5(operation)))
		return;

	if (FUNC6(operation, errno)) {
		FUNC3(operation->request);
		FUNC7(gb_operation_completion_wq, &operation->work);
	}
	FUNC8(operation->request);

	FUNC2(&operation->waiters);
	FUNC9(gb_operation_cancellation_queue,
		   !FUNC4(operation));
	FUNC1(&operation->waiters);
}