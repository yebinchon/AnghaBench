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
struct rxe_queue {int /*<<< orphan*/  elem_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct rxe_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rxe_queue*) ; 
 unsigned int FUNC5 (struct rxe_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct rxe_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct rxe_queue,struct rxe_queue) ; 

__attribute__((used)) static int FUNC8(struct rxe_queue *q, struct rxe_queue *new_q,
			 unsigned int num_elem)
{
	if (!FUNC6(q) && (num_elem < FUNC5(q)))
		return -EINVAL;

	while (!FUNC6(q)) {
		FUNC3(FUNC4(new_q), FUNC2(q),
		       new_q->elem_size);
		FUNC1(new_q);
		FUNC0(q);
	}

	FUNC7(*q, *new_q);

	return 0;
}