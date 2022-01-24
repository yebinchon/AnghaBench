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
typedef  int u32 ;
struct prefetch_mr_work {int pf_flags; int num_sge; int /*<<< orphan*/  work; struct ib_pd* pd; int /*<<< orphan*/  sg_list; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mr_srcu; } ;
struct ib_sge {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  enum ib_uverbs_advise_mr_advice { ____Placeholder_ib_uverbs_advise_mr_advice } ib_uverbs_advise_mr_advice ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH ; 
 int IB_UVERBS_ADVISE_MR_FLAG_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_PF_FLAGS_DOWNGRADE ; 
 int MLX5_PF_FLAGS_PREFETCH ; 
 int /*<<< orphan*/  FUNC1 (struct prefetch_mr_work*) ; 
 struct prefetch_mr_work* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ib_sge*,int) ; 
 int /*<<< orphan*/  mlx5_ib_prefetch_mr_work ; 
 int FUNC4 (struct ib_pd*,int,struct ib_sge*,int) ; 
 int FUNC5 (struct ib_pd*,struct ib_sge*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct prefetch_mr_work*,struct ib_sge*,int) ; 
 int /*<<< orphan*/  system_unbound_wq ; 
 struct mlx5_ib_dev* FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct ib_pd *pd,
			       enum ib_uverbs_advise_mr_advice advice,
			       u32 flags, struct ib_sge *sg_list, u32 num_sge)
{
	struct mlx5_ib_dev *dev = FUNC10(pd->device);
	u32 pf_flags = MLX5_PF_FLAGS_PREFETCH;
	struct prefetch_mr_work *work;
	bool valid_req;
	int srcu_key;

	if (advice == IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH)
		pf_flags |= MLX5_PF_FLAGS_DOWNGRADE;

	if (flags & IB_UVERBS_ADVISE_MR_FLAG_FLUSH)
		return FUNC4(pd, pf_flags, sg_list,
						num_sge);

	work = FUNC2(FUNC9(work, sg_list, num_sge), GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	FUNC3(work->sg_list, sg_list, num_sge * sizeof(struct ib_sge));

	/* It is guaranteed that the pd when work is executed is the pd when
	 * work was queued since pd can't be destroyed while it holds MRs and
	 * destroying a MR leads to flushing the workquque
	 */
	work->pd = pd;
	work->pf_flags = pf_flags;
	work->num_sge = num_sge;

	FUNC0(&work->work, mlx5_ib_prefetch_mr_work);

	srcu_key = FUNC7(&dev->mr_srcu);

	valid_req = FUNC5(pd, sg_list, num_sge);
	if (valid_req)
		FUNC6(system_unbound_wq, &work->work);
	else
		FUNC1(work);

	FUNC8(&dev->mr_srcu, srcu_key);

	return valid_req ? 0 : -EINVAL;
}