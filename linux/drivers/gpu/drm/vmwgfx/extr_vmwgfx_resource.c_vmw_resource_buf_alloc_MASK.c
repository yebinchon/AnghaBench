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
struct vmw_resource {struct vmw_buffer_object* backup; TYPE_2__* func; int /*<<< orphan*/  backup_size; int /*<<< orphan*/  dev_priv; } ;
struct TYPE_3__ {unsigned long num_pages; } ;
struct vmw_buffer_object {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  backup_placement; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 struct vmw_buffer_object* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vmw_buffer_object*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  vmw_bo_bo_free ; 
 int FUNC4 (int /*<<< orphan*/ ,struct vmw_buffer_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct vmw_resource *res,
				  bool interruptible)
{
	unsigned long size =
		(res->backup_size + PAGE_SIZE - 1) & PAGE_MASK;
	struct vmw_buffer_object *backup;
	int ret;

	if (FUNC2(res->backup)) {
		FUNC0(res->backup->base.num_pages * PAGE_SIZE < size);
		return 0;
	}

	backup = FUNC1(sizeof(*backup), GFP_KERNEL);
	if (FUNC3(!backup))
		return -ENOMEM;

	ret = FUNC4(res->dev_priv, backup, res->backup_size,
			      res->func->backup_placement,
			      interruptible,
			      &vmw_bo_bo_free);
	if (FUNC3(ret != 0))
		goto out_no_bo;

	res->backup = backup;

out_no_bo:
	return ret;
}