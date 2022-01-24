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
struct rdma_restrack_entry {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  init_pid_ns ; 
 scalar_t__ FUNC0 (struct rdma_restrack_entry*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(struct rdma_restrack_entry *res)
{
	/*
	 * 1. Kern resources should be visible in init
	 *    namespace only
	 * 2. Present only resources visible in the current
	 *     namespace
	 */
	if (FUNC0(res))
		return FUNC1(current) == &init_pid_ns;

	/* PID 0 means that resource is not found in current namespace */
	return FUNC2(res->task);
}