#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dma_buf {int vmapping_counter; int vmap_ptr; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {void* (* vmap ) (struct dma_buf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct dma_buf*) ; 

void *FUNC7(struct dma_buf *dmabuf)
{
	void *ptr;

	if (FUNC2(!dmabuf))
		return NULL;

	if (!dmabuf->ops->vmap)
		return NULL;

	FUNC4(&dmabuf->lock);
	if (dmabuf->vmapping_counter) {
		dmabuf->vmapping_counter++;
		FUNC0(!dmabuf->vmap_ptr);
		ptr = dmabuf->vmap_ptr;
		goto out_unlock;
	}

	FUNC0(dmabuf->vmap_ptr);

	ptr = dmabuf->ops->vmap(dmabuf);
	if (FUNC3(FUNC1(ptr)))
		ptr = NULL;
	if (!ptr)
		goto out_unlock;

	dmabuf->vmap_ptr = ptr;
	dmabuf->vmapping_counter = 1;

out_unlock:
	FUNC5(&dmabuf->lock);
	return ptr;
}