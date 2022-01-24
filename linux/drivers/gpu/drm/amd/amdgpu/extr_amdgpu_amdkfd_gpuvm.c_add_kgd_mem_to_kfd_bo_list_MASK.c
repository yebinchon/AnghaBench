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
struct ttm_validate_buffer {int num_shared; int /*<<< orphan*/  head; int /*<<< orphan*/ * bo; } ;
struct kgd_mem {struct amdgpu_bo* bo; struct ttm_validate_buffer validate_list; } ;
struct amdkfd_process_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  kfd_bo_list; int /*<<< orphan*/  userptr_valid_list; } ;
struct amdgpu_bo {int /*<<< orphan*/  tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct kgd_mem *mem,
				struct amdkfd_process_info *process_info,
				bool userptr)
{
	struct ttm_validate_buffer *entry = &mem->validate_list;
	struct amdgpu_bo *bo = mem->bo;

	FUNC0(&entry->head);
	entry->num_shared = 1;
	entry->bo = &bo->tbo;
	FUNC2(&process_info->lock);
	if (userptr)
		FUNC1(&entry->head, &process_info->userptr_valid_list);
	else
		FUNC1(&entry->head, &process_info->kfd_bo_list);
	FUNC3(&process_info->lock);
}