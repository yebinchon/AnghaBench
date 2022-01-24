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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct msm_gem_address_space {int dummy; } ;
typedef  void drm_gem_object ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 void* FUNC4 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (void*,struct msm_gem_address_space*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,struct msm_gem_address_space*) ; 

__attribute__((used)) static void *FUNC10(struct drm_device *dev, uint32_t size,
		uint32_t flags, struct msm_gem_address_space *aspace,
		struct drm_gem_object **bo, uint64_t *iova, bool locked)
{
	void *vaddr;
	struct drm_gem_object *obj = FUNC4(dev, size, flags, locked);
	int ret;

	if (FUNC2(obj))
		return FUNC0(obj);

	if (iova) {
		ret = FUNC7(obj, aspace, iova);
		if (ret)
			goto err;
	}

	vaddr = FUNC8(obj);
	if (FUNC2(vaddr)) {
		FUNC9(obj, aspace);
		ret = FUNC3(vaddr);
		goto err;
	}

	if (bo)
		*bo = obj;

	return vaddr;
err:
	if (locked)
		FUNC5(obj);
	else
		FUNC6(obj);

	return FUNC1(ret);

}