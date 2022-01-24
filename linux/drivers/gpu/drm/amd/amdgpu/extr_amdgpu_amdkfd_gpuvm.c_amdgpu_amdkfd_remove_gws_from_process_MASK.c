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
struct kgd_mem {int /*<<< orphan*/  lock; int /*<<< orphan*/  sync; struct amdgpu_bo* bo; } ;
struct amdkfd_process_info {int /*<<< orphan*/  eviction_fence; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kgd_mem*,struct amdkfd_process_info*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(void *info, void *mem)
{
	int ret;
	struct amdkfd_process_info *process_info = (struct amdkfd_process_info *)info;
	struct kgd_mem *kgd_mem = (struct kgd_mem *)mem;
	struct amdgpu_bo *gws_bo = kgd_mem->bo;

	/* Remove BO from process's validate list so restore worker won't touch
	 * it anymore
	 */
	FUNC8(kgd_mem, process_info);

	ret = FUNC1(gws_bo, false);
	if (FUNC9(ret)) {
		FUNC7("Reserve gws bo failed %d\n", ret);
		//TODO add BO back to validate_list?
		return ret;
	}
	FUNC0(gws_bo,
			process_info->eviction_fence);
	FUNC3(gws_bo);
	FUNC4(&kgd_mem->sync);
	FUNC2(&gws_bo);
	FUNC6(&kgd_mem->lock);
	FUNC5(mem);
	return 0;
}