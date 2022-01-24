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
typedef  int /*<<< orphan*/  u64 ;
struct msm_gpu {int /*<<< orphan*/  aspace; int /*<<< orphan*/  dev; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int MSM_BO_GPU_READONLY ; 
 int MSM_BO_UNCACHED ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct drm_gem_object**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 

struct drm_gem_object *FUNC5(struct msm_gpu *gpu,
		const struct firmware *fw, u64 *iova)
{
	struct drm_gem_object *bo;
	void *ptr;

	ptr = FUNC3(gpu->dev, fw->size - 4,
		MSM_BO_UNCACHED | MSM_BO_GPU_READONLY, gpu->aspace, &bo, iova);

	if (FUNC1(ptr))
		return FUNC0(ptr);

	FUNC2(ptr, &fw->data[4], fw->size - 4);

	FUNC4(bo);

	return bo;
}