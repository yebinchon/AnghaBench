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
struct mlx5_ib_mr {int npages; int /*<<< orphan*/  allocated_from_cache; int /*<<< orphan*/  num_pending_prefetch; int /*<<< orphan*/  live; struct ib_umem* umem; } ;
struct mlx5_ib_dev {TYPE_2__* mdev; int /*<<< orphan*/  mr_srcu; } ;
struct ib_umem_odp {int /*<<< orphan*/  is_implicit_odp; } ;
struct ib_umem {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg_pages; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_umem_odp*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_umem_odp*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_umem_odp*) ; 
 scalar_t__ FUNC10 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_umem_odp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 
 struct ib_umem_odp* FUNC16 (struct ib_umem*) ; 

__attribute__((used)) static void FUNC17(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
	int npages = mr->npages;
	struct ib_umem *umem = mr->umem;

	if (FUNC10(mr)) {
		struct ib_umem_odp *umem_odp = FUNC16(umem);

		/* Prevent new page faults and
		 * prefetch requests from succeeding
		 */
		FUNC1(mr->live, 0);

		/* Wait for all running page-fault handlers to finish. */
		FUNC15(&dev->mr_srcu);

		/* dequeue pending prefetch requests for the mr */
		if (FUNC2(&mr->num_pending_prefetch))
			FUNC5(system_unbound_wq);
		FUNC0(FUNC2(&mr->num_pending_prefetch));

		/* Destroy all page mappings */
		if (!umem_odp->is_implicit_odp)
			FUNC13(umem_odp,
						 FUNC9(umem_odp),
						 FUNC6(umem_odp));
		else
			FUNC12(mr);
		/*
		 * We kill the umem before the MR for ODP,
		 * so that there will not be any invalidations in
		 * flight, looking at the *mr struct.
		 */
		FUNC7(umem_odp);
		FUNC3(npages, &dev->mdev->priv.reg_pages);

		/* Avoid double-freeing the umem. */
		umem = NULL;
	}

	FUNC4(dev, mr);

	/*
	 * We should unregister the DMA address from the HCA before
	 * remove the DMA mapping.
	 */
	FUNC14(dev, mr);
	FUNC8(umem);
	if (umem)
		FUNC3(npages, &dev->mdev->priv.reg_pages);

	if (!mr->allocated_from_cache)
		FUNC11(mr);
}