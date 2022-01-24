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
struct ib_umem_odp {int /*<<< orphan*/  umem_mutex; int /*<<< orphan*/  notifier_completion; int /*<<< orphan*/  notifiers_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ib_umem_odp *umem_odp)
{
	FUNC0(&umem_odp->umem_mutex);
	if (umem_odp->notifiers_count++ == 0)
		/*
		 * Initialize the completion object for waiting on
		 * notifiers. Since notifier_count is zero, no one should be
		 * waiting right now.
		 */
		FUNC2(&umem_odp->notifier_completion);
	FUNC1(&umem_odp->umem_mutex);
}