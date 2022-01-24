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
struct ttm_buffer_object {int /*<<< orphan*/  ttm; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  vma_node; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; scalar_t__ kfd_bo; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct amdgpu_bo* FUNC2 (struct ttm_buffer_object*) ; 

__attribute__((used)) static int FUNC3(struct ttm_buffer_object *bo, struct file *filp)
{
	struct amdgpu_bo *abo = FUNC2(bo);

	/*
	 * Don't verify access for KFD BOs. They don't have a GEM
	 * object associated with them.
	 */
	if (abo->kfd_bo)
		return 0;

	if (FUNC0(bo->ttm))
		return -EPERM;
	return FUNC1(&abo->tbo.base.vma_node,
					  filp->private_data);
}