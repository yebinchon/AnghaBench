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
typedef  size_t u32 ;
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_pgoff; } ;
struct mlx5_bfreg_info {int num_sys_pages; int num_static_sys_pages; size_t total_num_bfregs; size_t* sys_pages; int /*<<< orphan*/  lock; scalar_t__* count; int /*<<< orphan*/  lib_uar_4k; } ;
struct mlx5_ib_ucontext {int /*<<< orphan*/  ibucontext; struct mlx5_bfreg_info bfregi; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  enum mlx5_ib_mmap_cmd { ____Placeholder_mlx5_ib_mmap_cmd } mlx5_ib_mmap_cmd ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
#define  MLX5_IB_MMAP_ALLOC_WC 131 
#define  MLX5_IB_MMAP_NC_PAGE 130 
#define  MLX5_IB_MMAP_REGULAR_PAGE 129 
#define  MLX5_IB_MMAP_WC_PAGE 128 
 int MLX5_NON_FP_BFREGS_PER_UAR ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,char*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_ib_dev*,struct mlx5_bfreg_info*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct vm_area_struct*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx5_ib_dev*,size_t) ; 

__attribute__((used)) static int FUNC17(struct mlx5_ib_dev *dev, enum mlx5_ib_mmap_cmd cmd,
		    struct vm_area_struct *vma,
		    struct mlx5_ib_ucontext *context)
{
	struct mlx5_bfreg_info *bfregi = &context->bfregi;
	int err;
	unsigned long idx;
	phys_addr_t pfn;
	pgprot_t prot;
	u32 bfreg_dyn_idx = 0;
	u32 uar_index;
	int dyn_uar = (cmd == MLX5_IB_MMAP_ALLOC_WC);
	int max_valid_idx = dyn_uar ? bfregi->num_sys_pages :
				bfregi->num_static_sys_pages;

	if (vma->vm_end - vma->vm_start != PAGE_SIZE)
		return -EINVAL;

	if (dyn_uar)
		idx = FUNC0(vma->vm_pgoff) + bfregi->num_static_sys_pages;
	else
		idx = FUNC1(vma->vm_pgoff);

	if (idx >= max_valid_idx) {
		FUNC8(dev, "invalid uar index %lu, max=%d\n",
			     idx, max_valid_idx);
		return -EINVAL;
	}

	switch (cmd) {
	case MLX5_IB_MMAP_WC_PAGE:
	case MLX5_IB_MMAP_ALLOC_WC:
/* Some architectures don't support WC memory */
#if defined(CONFIG_X86)
		if (!pat_enabled())
			return -EPERM;
#elif !(defined(CONFIG_PPC) || (defined(CONFIG_ARM) && defined(CONFIG_MMU)))
			return -EPERM;
#endif
	/* fall through */
	case MLX5_IB_MMAP_REGULAR_PAGE:
		/* For MLX5_IB_MMAP_REGULAR_PAGE do the best effort to get WC */
		prot = FUNC14(vma->vm_page_prot);
		break;
	case MLX5_IB_MMAP_NC_PAGE:
		prot = FUNC13(vma->vm_page_prot);
		break;
	default:
		return -EINVAL;
	}

	if (dyn_uar) {
		int uars_per_page;

		uars_per_page = FUNC2(dev, bfregi->lib_uar_4k);
		bfreg_dyn_idx = idx * (uars_per_page * MLX5_NON_FP_BFREGS_PER_UAR);
		if (bfreg_dyn_idx >= bfregi->total_num_bfregs) {
			FUNC8(dev, "invalid bfreg_dyn_idx %u, max=%u\n",
				     bfreg_dyn_idx, bfregi->total_num_bfregs);
			return -EINVAL;
		}

		FUNC10(&bfregi->lock);
		/* Fail if uar already allocated, first bfreg index of each
		 * page holds its count.
		 */
		if (bfregi->count[bfreg_dyn_idx]) {
			FUNC8(dev, "wrong offset, idx %lu is busy, bfregn=%u\n", idx, bfreg_dyn_idx);
			FUNC11(&bfregi->lock);
			return -EINVAL;
		}

		bfregi->count[bfreg_dyn_idx]++;
		FUNC11(&bfregi->lock);

		err = FUNC3(dev->mdev, &uar_index);
		if (err) {
			FUNC8(dev, "UAR alloc failed\n");
			goto free_bfreg;
		}
	} else {
		uar_index = bfregi->sys_pages[idx];
	}

	pfn = FUNC16(dev, uar_index);
	FUNC5(dev, "uar idx 0x%lx, pfn %pa\n", idx, &pfn);

	err = FUNC15(&context->ibucontext, vma, pfn, PAGE_SIZE,
				prot);
	if (err) {
		FUNC6(dev,
			    "rdma_user_mmap_io failed with error=%d, mmap_cmd=%s\n",
			    err, FUNC9(cmd));
		goto err;
	}

	if (dyn_uar)
		bfregi->sys_pages[idx] = uar_index;
	return 0;

err:
	if (!dyn_uar)
		return err;

	FUNC4(dev->mdev, idx);

free_bfreg:
	FUNC7(dev, bfregi, bfreg_dyn_idx);

	return err;
}