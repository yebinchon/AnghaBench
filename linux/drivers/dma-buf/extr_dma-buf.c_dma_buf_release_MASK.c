#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {struct dma_buf* private_data; } ;
struct dma_resv {int dummy; } ;
struct TYPE_6__ {scalar_t__ active; } ;
struct TYPE_5__ {scalar_t__ active; } ;
struct dma_buf {int vmapping_counter; int /*<<< orphan*/  owner; struct dma_resv* resv; int /*<<< orphan*/  list_node; TYPE_3__* ops; TYPE_2__ cb_excl; TYPE_1__ cb_shared; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* release ) (struct dma_buf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 TYPE_4__ db_list ; 
 int /*<<< orphan*/  FUNC1 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_buf*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct dma_buf *dmabuf;

	if (!FUNC2(file))
		return -EINVAL;

	dmabuf = file->private_data;

	FUNC0(dmabuf->vmapping_counter);

	/*
	 * Any fences that a dma-buf poll can wait on should be signaled
	 * before releasing dma-buf. This is the responsibility of each
	 * driver that uses the reservation objects.
	 *
	 * If you hit this BUG() it means someone dropped their ref to the
	 * dma-buf while still having pending operation to the buffer.
	 */
	FUNC0(dmabuf->cb_shared.active || dmabuf->cb_excl.active);

	dmabuf->ops->release(dmabuf);

	FUNC6(&db_list.lock);
	FUNC4(&dmabuf->list_node);
	FUNC7(&db_list.lock);

	if (dmabuf->resv == (struct dma_resv *)&dmabuf[1])
		FUNC1(dmabuf->resv);

	FUNC5(dmabuf->owner);
	FUNC3(dmabuf);
	return 0;
}