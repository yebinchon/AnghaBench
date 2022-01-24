#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
typedef  unsigned int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/ ** pages; int /*<<< orphan*/  ready; } ;
struct amdgpu_device {unsigned int dummy_page_addr; int num_vmhubs; TYPE_1__ gart; } ;

/* Variables and functions */
 unsigned int AMDGPU_GPU_PAGES_IN_CPU_PAGE ; 
 unsigned int AMDGPU_GPU_PAGE_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct amdgpu_device *adev, uint64_t offset,
			int pages)
{
	unsigned t;
	unsigned p;
	int i, j;
	u64 page_base;
	/* Starting from VEGA10, system bit must be 0 to mean invalid. */
	uint64_t flags = 0;

	if (!adev->gart.ready) {
		FUNC0(1, "trying to unbind memory from uninitialized GART !\n");
		return -EINVAL;
	}

	t = offset / AMDGPU_GPU_PAGE_SIZE;
	p = t / AMDGPU_GPU_PAGES_IN_CPU_PAGE;
	for (i = 0; i < pages; i++, p++) {
#ifdef CONFIG_DRM_AMDGPU_GART_DEBUGFS
		adev->gart.pages[p] = NULL;
#endif
		page_base = adev->dummy_page_addr;
		if (!adev->gart.ptr)
			continue;

		for (j = 0; j < AMDGPU_GPU_PAGES_IN_CPU_PAGE; j++, t++) {
			FUNC3(adev, adev->gart.ptr,
					       t, page_base, flags);
			page_base += AMDGPU_GPU_PAGE_SIZE;
		}
	}
	FUNC4();
	FUNC1(adev, NULL);
	for (i = 0; i < adev->num_vmhubs; i++)
		FUNC2(adev, 0, i, 0);

	return 0;
}