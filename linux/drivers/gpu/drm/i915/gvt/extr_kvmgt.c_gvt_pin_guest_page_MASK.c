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
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdev; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_vgpu*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned long*,int,int,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct intel_vgpu *vgpu, unsigned long gfn,
		unsigned long size, struct page **page)
{
	unsigned long base_pfn = 0;
	int total_pages;
	int npage;
	int ret;

	total_pages = FUNC5(size, PAGE_SIZE) / PAGE_SIZE;
	/*
	 * We pin the pages one-by-one to avoid allocating a big arrary
	 * on stack to hold pfns.
	 */
	for (npage = 0; npage < total_pages; npage++) {
		unsigned long cur_gfn = gfn + npage;
		unsigned long pfn;

		ret = FUNC6(FUNC2(vgpu->vdev.mdev), &cur_gfn, 1,
				     IOMMU_READ | IOMMU_WRITE, &pfn);
		if (ret != 1) {
			FUNC1("vfio_pin_pages failed for gfn 0x%lx, ret %d\n",
				     cur_gfn, ret);
			goto err;
		}

		if (!FUNC4(pfn)) {
			FUNC1("pfn 0x%lx is not mem backed\n", pfn);
			npage++;
			ret = -EFAULT;
			goto err;
		}

		if (npage == 0)
			base_pfn = pfn;
		else if (base_pfn + npage != pfn) {
			FUNC1("The pages are not continuous\n");
			ret = -EINVAL;
			npage++;
			goto err;
		}
	}

	*page = FUNC3(base_pfn);
	return 0;
err:
	FUNC0(vgpu, gfn, npage * PAGE_SIZE);
	return ret;
}