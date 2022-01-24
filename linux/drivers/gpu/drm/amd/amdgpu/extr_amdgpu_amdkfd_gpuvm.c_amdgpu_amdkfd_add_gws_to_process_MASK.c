#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kgd_mem {int /*<<< orphan*/  lock; int /*<<< orphan*/  sync; struct amdkfd_process_info* process_info; int /*<<< orphan*/  domain; int /*<<< orphan*/  bo; } ;
struct amdkfd_process_info {int /*<<< orphan*/  lock; TYPE_3__* eviction_fence; } ;
struct TYPE_4__ {int /*<<< orphan*/  resv; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GWS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kgd_mem*,struct amdkfd_process_info*,int) ; 
 int FUNC1 (struct amdgpu_bo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*) ; 
 int FUNC4 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct kgd_mem*) ; 
 struct kgd_mem* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct kgd_mem*,struct amdkfd_process_info*) ; 
 scalar_t__ FUNC18 (int) ; 

int FUNC19(void *info, void *gws, struct kgd_mem **mem)
{
	struct amdkfd_process_info *process_info = (struct amdkfd_process_info *)info;
	struct amdgpu_bo *gws_bo = (struct amdgpu_bo *)gws;
	int ret;

	if (!info || !gws)
		return -EINVAL;

	*mem = FUNC11(sizeof(struct kgd_mem), GFP_KERNEL);
	if (!*mem)
		return -ENOMEM;

	FUNC13(&(*mem)->lock);
	(*mem)->bo = FUNC3(gws_bo);
	(*mem)->domain = AMDGPU_GEM_DOMAIN_GWS;
	(*mem)->process_info = process_info;
	FUNC0(*mem, process_info, false);
	FUNC7(&(*mem)->sync);


	/* Validate gws bo the first time it is added to process */
	FUNC14(&(*mem)->process_info->lock);
	ret = FUNC4(gws_bo, false);
	if (FUNC18(ret)) {
		FUNC16("Reserve gws bo failed %d\n", ret);
		goto bo_reservation_failure;
	}

	ret = FUNC1(gws_bo, AMDGPU_GEM_DOMAIN_GWS, true);
	if (ret) {
		FUNC16("GWS BO validate failed %d\n", ret);
		goto bo_validation_failure;
	}
	/* GWS resource is shared b/t amdgpu and amdkfd
	 * Add process eviction fence to bo so they can
	 * evict each other.
	 */
	ret = FUNC9(gws_bo->tbo.base.resv, 1);
	if (ret)
		goto reserve_shared_fail;
	FUNC2(gws_bo, &process_info->eviction_fence->base, true);
	FUNC6(gws_bo);
	FUNC15(&(*mem)->process_info->lock);

	return ret;

reserve_shared_fail:
bo_validation_failure:
	FUNC6(gws_bo);
bo_reservation_failure:
	FUNC15(&(*mem)->process_info->lock);
	FUNC8(&(*mem)->sync);
	FUNC17(*mem, process_info);
	FUNC5(&gws_bo);
	FUNC12(&(*mem)->lock);
	FUNC10(*mem);
	*mem = NULL;
	return ret;
}