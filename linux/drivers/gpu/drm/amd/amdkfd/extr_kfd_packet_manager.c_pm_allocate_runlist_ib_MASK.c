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
typedef  int /*<<< orphan*/  uint64_t ;
struct packet_manager {int allocated; int /*<<< orphan*/  lock; TYPE_2__* ib_buffer_obj; TYPE_1__* dqm; } ;
struct TYPE_4__ {int /*<<< orphan*/  gpu_addr; void* cpu_ptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct packet_manager*,unsigned int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct packet_manager *pm,
				unsigned int **rl_buffer,
				uint64_t *rl_gpu_buffer,
				unsigned int *rl_buffer_size,
				bool *is_over_subscription)
{
	int retval;

	if (FUNC0(pm->allocated))
		return -EINVAL;

	FUNC5(pm, rl_buffer_size, is_over_subscription);

	FUNC3(&pm->lock);

	retval = FUNC1(pm->dqm->dev, *rl_buffer_size,
					&pm->ib_buffer_obj);

	if (retval) {
		FUNC6("Failed to allocate runlist IB\n");
		goto out;
	}

	*(void **)rl_buffer = pm->ib_buffer_obj->cpu_ptr;
	*rl_gpu_buffer = pm->ib_buffer_obj->gpu_addr;

	FUNC2(*rl_buffer, 0, *rl_buffer_size);
	pm->allocated = true;

out:
	FUNC4(&pm->lock);
	return retval;
}