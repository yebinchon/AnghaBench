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
struct kfd_mem_obj {unsigned int range_start; unsigned int range_end; } ;
struct kfd_dev {int /*<<< orphan*/  gtt_sa_lock; int /*<<< orphan*/  gtt_sa_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kfd_mem_obj*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct kfd_mem_obj*,unsigned int,unsigned int) ; 

int FUNC5(struct kfd_dev *kfd, struct kfd_mem_obj *mem_obj)
{
	unsigned int bit;

	/* Act like kfree when trying to free a NULL object */
	if (!mem_obj)
		return 0;

	FUNC4("Free mem_obj = %p, range_start = %d, range_end = %d\n",
			mem_obj, mem_obj->range_start, mem_obj->range_end);

	FUNC2(&kfd->gtt_sa_lock);

	/* Mark the chunks as free */
	for (bit = mem_obj->range_start;
		bit <= mem_obj->range_end;
		bit++)
		FUNC0(bit, kfd->gtt_sa_bitmap);

	FUNC3(&kfd->gtt_sa_lock);

	FUNC1(mem_obj);
	return 0;
}