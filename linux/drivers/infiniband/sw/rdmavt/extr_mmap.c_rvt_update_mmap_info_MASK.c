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
typedef  scalar_t__ u32 ;
struct rvt_mmap_info {scalar_t__ offset; scalar_t__ size; void* obj; } ;
struct rvt_dev_info {scalar_t__ mmap_offset; int /*<<< orphan*/  mmap_offset_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct rvt_dev_info *rdi, struct rvt_mmap_info *ip,
			  u32 size, void *obj)
{
	size = FUNC0(size);

	FUNC1(&rdi->mmap_offset_lock);
	if (rdi->mmap_offset == 0)
		rdi->mmap_offset = PAGE_SIZE;
	ip->offset = rdi->mmap_offset;
	rdi->mmap_offset += size;
	FUNC2(&rdi->mmap_offset_lock);

	ip->size = size;
	ip->obj = obj;
}