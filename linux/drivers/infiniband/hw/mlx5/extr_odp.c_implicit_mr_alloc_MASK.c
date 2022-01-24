#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  key; scalar_t__ iova; } ;
struct TYPE_3__ {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; struct ib_pd* pd; } ;
struct mlx5_ib_mr {int access_flags; TYPE_2__ mmkey; TYPE_1__ ibmr; int /*<<< orphan*/ * umem; struct mlx5_ib_dev* dev; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_umem_odp {int /*<<< orphan*/  umem; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct mlx5_ib_mr* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx5_ib_mr*) ; 
 int MLX5_IB_UPD_XLT_ATOMIC ; 
 int MLX5_IB_UPD_XLT_ENABLE ; 
 int MLX5_IB_UPD_XLT_INDIRECT ; 
 int MLX5_IB_UPD_XLT_ZAP ; 
 int /*<<< orphan*/  MLX5_IMR_KSM_CACHE_ENTRY ; 
 int /*<<< orphan*/  MLX5_IMR_MTT_CACHE_ENTRY ; 
 int /*<<< orphan*/  MLX5_IMR_MTT_ENTRIES ; 
 int /*<<< orphan*/  MLX5_KSM_PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int) ; 
 int FUNC4 (struct mlx5_ib_mr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mlx5_imr_ksm_entries ; 
 struct mlx5_ib_mr* FUNC5 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 struct mlx5_ib_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5_ib_mr *FUNC8(struct ib_pd *pd,
					    struct ib_umem_odp *umem_odp,
					    bool ksm, int access_flags)
{
	struct mlx5_ib_dev *dev = FUNC7(pd->device);
	struct mlx5_ib_mr *mr;
	int err;

	mr = FUNC5(dev, ksm ? MLX5_IMR_KSM_CACHE_ENTRY :
					    MLX5_IMR_MTT_CACHE_ENTRY);

	if (FUNC1(mr))
		return mr;

	mr->ibmr.pd = pd;

	mr->dev = dev;
	mr->access_flags = access_flags;
	mr->mmkey.iova = 0;
	mr->umem = &umem_odp->umem;

	if (ksm) {
		err = FUNC4(mr, 0,
					 mlx5_imr_ksm_entries,
					 MLX5_KSM_PAGE_SHIFT,
					 MLX5_IB_UPD_XLT_INDIRECT |
					 MLX5_IB_UPD_XLT_ZAP |
					 MLX5_IB_UPD_XLT_ENABLE);

	} else {
		err = FUNC4(mr, 0,
					 MLX5_IMR_MTT_ENTRIES,
					 PAGE_SHIFT,
					 MLX5_IB_UPD_XLT_ZAP |
					 MLX5_IB_UPD_XLT_ENABLE |
					 MLX5_IB_UPD_XLT_ATOMIC);
	}

	if (err)
		goto fail;

	mr->ibmr.lkey = mr->mmkey.key;
	mr->ibmr.rkey = mr->mmkey.key;

	FUNC2(dev, "key %x dev %p mr %p\n",
		    mr->mmkey.key, dev->mdev, mr);

	return mr;

fail:
	FUNC3(dev, "Failed to register MKEY %d\n", err);
	FUNC6(dev, mr);

	return FUNC0(err);
}