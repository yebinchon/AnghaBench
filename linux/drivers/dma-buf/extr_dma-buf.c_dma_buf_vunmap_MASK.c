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
struct dma_buf {void* vmap_ptr; scalar_t__ vmapping_counter; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* vunmap ) (struct dma_buf*,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_buf*,void*) ; 

void FUNC5(struct dma_buf *dmabuf, void *vaddr)
{
	if (FUNC1(!dmabuf))
		return;

	FUNC0(!dmabuf->vmap_ptr);
	FUNC0(dmabuf->vmapping_counter == 0);
	FUNC0(dmabuf->vmap_ptr != vaddr);

	FUNC2(&dmabuf->lock);
	if (--dmabuf->vmapping_counter == 0) {
		if (dmabuf->ops->vunmap)
			dmabuf->ops->vunmap(dmabuf, vaddr);
		dmabuf->vmap_ptr = NULL;
	}
	FUNC3(&dmabuf->lock);
}