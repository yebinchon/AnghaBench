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
struct vb2_queue {unsigned int type; } ;
typedef  enum vb2_memory { ____Placeholder_vb2_memory } vb2_memory ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int VB2_MEMORY_DMABUF ; 
 int VB2_MEMORY_MMAP ; 
 int VB2_MEMORY_USERPTR ; 
 scalar_t__ FUNC0 (struct vb2_queue*) ; 
 scalar_t__ FUNC1 (struct vb2_queue*) ; 
 scalar_t__ FUNC2 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (struct vb2_queue*) ; 

int FUNC5(struct vb2_queue *q,
		enum vb2_memory memory, unsigned int type)
{
	if (memory != VB2_MEMORY_MMAP && memory != VB2_MEMORY_USERPTR &&
	    memory != VB2_MEMORY_DMABUF) {
		FUNC3(1, "unsupported memory type\n");
		return -EINVAL;
	}

	if (type != q->type) {
		FUNC3(1, "requested type is incorrect\n");
		return -EINVAL;
	}

	/*
	 * Make sure all the required memory ops for given memory type
	 * are available.
	 */
	if (memory == VB2_MEMORY_MMAP && FUNC1(q)) {
		FUNC3(1, "MMAP for current setup unsupported\n");
		return -EINVAL;
	}

	if (memory == VB2_MEMORY_USERPTR && FUNC2(q)) {
		FUNC3(1, "USERPTR for current setup unsupported\n");
		return -EINVAL;
	}

	if (memory == VB2_MEMORY_DMABUF && FUNC0(q)) {
		FUNC3(1, "DMABUF for current setup unsupported\n");
		return -EINVAL;
	}

	/*
	 * Place the busy tests at the end: -EBUSY can be ignored when
	 * create_bufs is called with count == 0, but count == 0 should still
	 * do the memory and type validation.
	 */
	if (FUNC4(q)) {
		FUNC3(1, "file io in progress\n");
		return -EBUSY;
	}
	return 0;
}