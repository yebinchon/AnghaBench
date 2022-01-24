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
struct msm_gpu {int /*<<< orphan*/  active_list; } ;
struct msm_gem_object {scalar_t__ madv; int /*<<< orphan*/  mm_list; struct msm_gpu* gpu; } ;
struct drm_gem_object {int /*<<< orphan*/  resv; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 scalar_t__ MSM_MADV_WILLNEED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC5 (struct drm_gem_object*) ; 

void FUNC6(struct drm_gem_object *obj,
		struct msm_gpu *gpu, bool exclusive, struct dma_fence *fence)
{
	struct msm_gem_object *msm_obj = FUNC5(obj);
	FUNC0(msm_obj->madv != MSM_MADV_WILLNEED);
	msm_obj->gpu = gpu;
	if (exclusive)
		FUNC1(obj->resv, fence);
	else
		FUNC2(obj->resv, fence);
	FUNC4(&msm_obj->mm_list);
	FUNC3(&msm_obj->mm_list, &gpu->active_list);
}