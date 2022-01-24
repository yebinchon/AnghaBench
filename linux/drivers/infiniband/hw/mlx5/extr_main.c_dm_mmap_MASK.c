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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct vm_area_struct {size_t vm_end; size_t vm_start; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_pgoff; } ;
struct mlx5_ib_ucontext {int /*<<< orphan*/  dm_pages; } ;
struct mlx5_ib_dev {TYPE_1__* mdev; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_2__ {size_t bar_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memic_bar_start_addr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ib_ucontext*,struct vm_area_struct*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_ucontext* FUNC6 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC7(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	struct mlx5_ib_ucontext *mctx = FUNC6(context);
	struct mlx5_ib_dev *dev = FUNC5(context->device);
	u16 page_idx = FUNC2(vma->vm_pgoff);
	size_t map_size = vma->vm_end - vma->vm_start;
	u32 npages = map_size >> PAGE_SHIFT;
	phys_addr_t pfn;

	if (FUNC1(mctx->dm_pages, page_idx + npages, page_idx) !=
	    page_idx + npages)
		return -EINVAL;

	pfn = ((dev->mdev->bar_addr +
	      FUNC0(dev->mdev, memic_bar_start_addr)) >>
	      PAGE_SHIFT) +
	      page_idx;
	return FUNC4(context, vma, pfn, map_size,
				 FUNC3(vma->vm_page_prot));
}