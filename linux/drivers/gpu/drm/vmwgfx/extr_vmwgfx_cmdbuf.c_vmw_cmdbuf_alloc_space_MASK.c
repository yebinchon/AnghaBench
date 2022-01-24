#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmw_cmdbuf_man {int /*<<< orphan*/  space_mutex; TYPE_1__* dev_priv; int /*<<< orphan*/  alloc_queue; } ;
struct vmw_cmdbuf_alloc_info {int page_size; int done; struct drm_mm_node* node; } ;
struct drm_mm_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmdbuf_waiters; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (size_t) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  SVGA_IRQFLAG_COMMAND_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct vmw_cmdbuf_man*,struct vmw_cmdbuf_alloc_info*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct vmw_cmdbuf_man *man,
				  struct drm_mm_node *node,
				  size_t size,
				  bool interruptible)
{
	struct vmw_cmdbuf_alloc_info info;

	info.page_size = FUNC0(size) >> PAGE_SHIFT;
	info.node = node;
	info.done = false;

	/*
	 * To prevent starvation of large requests, only one allocating call
	 * at a time waiting for space.
	 */
	if (interruptible) {
		if (FUNC2(&man->space_mutex))
			return -ERESTARTSYS;
	} else {
		FUNC1(&man->space_mutex);
	}

	/* Try to allocate space without waiting. */
	if (FUNC4(man, &info))
		goto out_unlock;

	FUNC5(man->dev_priv,
			       SVGA_IRQFLAG_COMMAND_BUFFER,
			       &man->dev_priv->cmdbuf_waiters);

	if (interruptible) {
		int ret;

		ret = FUNC8
			(man->alloc_queue, FUNC4(man, &info));
		if (ret) {
			FUNC6
				(man->dev_priv, SVGA_IRQFLAG_COMMAND_BUFFER,
				 &man->dev_priv->cmdbuf_waiters);
			FUNC3(&man->space_mutex);
			return ret;
		}
	} else {
		FUNC7(man->alloc_queue, FUNC4(man, &info));
	}
	FUNC6(man->dev_priv,
				  SVGA_IRQFLAG_COMMAND_BUFFER,
				  &man->dev_priv->cmdbuf_waiters);

out_unlock:
	FUNC3(&man->space_mutex);

	return 0;
}