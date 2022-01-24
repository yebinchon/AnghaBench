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
typedef  int /*<<< orphan*/  u64 ;
struct ib_mr {int dummy; } ;
struct TYPE_5__ {int key; } ;
struct mlx5_ib_mr {struct ib_mr ibmr; int /*<<< orphan*/  live; int /*<<< orphan*/  num_pending_prefetch; struct ib_umem* umem; TYPE_2__ mmkey; } ;
struct TYPE_4__ {int general_caps; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  slow_path_mutex; int /*<<< orphan*/  mdev; TYPE_1__ odp_caps; } ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {struct mlx5_ib_mr* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INFINIBAND_ON_DEMAND_PAGING ; 
 int /*<<< orphan*/  CONFIG_INFINIBAND_USER_MEM ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 struct ib_mr* FUNC0 (struct mlx5_ib_mr*) ; 
 struct ib_mr* FUNC1 (int) ; 
 int IB_ACCESS_ON_DEMAND ; 
 int IB_ODP_SUPPORT_IMPLICIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_IB_UPD_XLT_ENABLE ; 
 int MLX5_IB_UPD_XLT_ZAP ; 
 int FUNC5 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  U64_MAX ; 
 struct mlx5_ib_mr* FUNC6 (struct ib_pd*,struct ib_umem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_umem*) ; 
 scalar_t__ FUNC10 (struct mlx5_ib_mr*) ; 
 struct mlx5_ib_mr* FUNC11 (int /*<<< orphan*/ ,struct ib_udata*,int) ; 
 int FUNC12 (struct mlx5_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_ib_dev*,char*,int,...) ; 
 int FUNC14 (struct mlx5_ib_mr*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC15 (struct mlx5_ib_dev*) ; 
 int FUNC16 (struct mlx5_ib_dev*,struct ib_udata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ib_umem**,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 struct mlx5_ib_mr* FUNC20 (int /*<<< orphan*/ *,struct ib_pd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_umem*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx5_ib_dev*,struct mlx5_ib_mr*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC23 (struct ib_umem*) ; 
 struct mlx5_ib_dev* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ib_pd*) ; 
 int /*<<< orphan*/  umr_extended_translation_offset ; 

struct ib_mr *FUNC26(struct ib_pd *pd, u64 start, u64 length,
				  u64 virt_addr, int access_flags,
				  struct ib_udata *udata)
{
	struct mlx5_ib_dev *dev = FUNC24(pd->device);
	struct mlx5_ib_mr *mr = NULL;
	bool use_umr;
	struct ib_umem *umem;
	int page_shift;
	int npages;
	int ncont;
	int order;
	int err;

	if (!FUNC2(CONFIG_INFINIBAND_USER_MEM))
		return FUNC1(-EOPNOTSUPP);

	FUNC13(dev, "start 0x%llx, virt_addr 0x%llx, length 0x%llx, access_flags 0x%x\n",
		    start, virt_addr, length, access_flags);

	if (FUNC2(CONFIG_INFINIBAND_ON_DEMAND_PAGING) && !start &&
	    length == U64_MAX) {
		if (!(access_flags & IB_ACCESS_ON_DEMAND) ||
		    !(dev->odp_caps.general_caps & IB_ODP_SUPPORT_IMPLICIT))
			return FUNC1(-EINVAL);

		mr = FUNC11(FUNC25(pd), udata, access_flags);
		if (FUNC3(mr))
			return FUNC0(mr);
		return &mr->ibmr;
	}

	err = FUNC16(dev, udata, start, length, access_flags, &umem,
			  &npages, &page_shift, &ncont, &order);

	if (err < 0)
		return FUNC1(err);

	use_umr = FUNC12(dev, true);

	if (order <= FUNC15(dev) && use_umr) {
		mr = FUNC6(pd, umem, virt_addr, length, ncont,
					 page_shift, order, access_flags);
		if (FUNC5(mr) == -EAGAIN) {
			FUNC13(dev, "cache empty for order %d\n", order);
			mr = NULL;
		}
	} else if (!FUNC4(dev->mdev, umr_extended_translation_offset)) {
		if (access_flags & IB_ACCESS_ON_DEMAND) {
			err = -EINVAL;
			FUNC19("Got MR registration for ODP MR > 512MB, not supported for Connect-IB\n");
			goto error;
		}
		use_umr = false;
	}

	if (!mr) {
		FUNC17(&dev->slow_path_mutex);
		mr = FUNC20(NULL, pd, virt_addr, length, umem, ncont,
				page_shift, access_flags, !use_umr);
		FUNC18(&dev->slow_path_mutex);
	}

	if (FUNC3(mr)) {
		err = FUNC5(mr);
		goto error;
	}

	FUNC13(dev, "mkey 0x%x\n", mr->mmkey.key);

	mr->umem = umem;
	FUNC21(dev, mr, npages, length, access_flags);

	if (use_umr) {
		int update_xlt_flags = MLX5_IB_UPD_XLT_ENABLE;

		if (access_flags & IB_ACCESS_ON_DEMAND)
			update_xlt_flags |= MLX5_IB_UPD_XLT_ZAP;

		err = FUNC14(mr, 0, ncont, page_shift,
					 update_xlt_flags);

		if (err) {
			FUNC8(dev, mr);
			return FUNC1(err);
		}
	}

	if (FUNC10(mr)) {
		FUNC23(mr->umem)->private = mr;
		FUNC7(&mr->num_pending_prefetch, 0);
	}
	if (FUNC2(CONFIG_INFINIBAND_ON_DEMAND_PAGING))
		FUNC22(&mr->live, 1);

	return &mr->ibmr;
error:
	FUNC9(umem);
	return FUNC1(err);
}