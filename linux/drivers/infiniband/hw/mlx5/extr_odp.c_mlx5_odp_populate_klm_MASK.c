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
struct mlx5_klm {void* key; void* bcount; scalar_t__ va; } ;
struct TYPE_5__ {size_t lkey; struct ib_pd* pd; } ;
struct mlx5_ib_mr {TYPE_2__ ibmr; TYPE_1__* dev; int /*<<< orphan*/  umem; } ;
struct mlx5_ib_dev {size_t null_mkey; } ;
struct ib_umem_odp {struct mlx5_ib_mr* private; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int /*<<< orphan*/  umem_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  mr_srcu; } ;

/* Variables and functions */
 int MLX5_IB_UPD_XLT_ZAP ; 
 size_t MLX5_IMR_MTT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t) ; 
 unsigned long FUNC2 (struct ib_umem_odp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,char*,int,unsigned long,int /*<<< orphan*/ ) ; 
 struct ib_umem_odp* FUNC5 (size_t,size_t,struct mlx5_ib_mr*) ; 
 struct ib_umem_odp* FUNC6 (struct ib_umem_odp*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct mlx5_klm *pklm, size_t offset,
			   size_t nentries, struct mlx5_ib_mr *mr, int flags)
{
	struct ib_pd *pd = mr->ibmr.pd;
	struct mlx5_ib_dev *dev = FUNC8(pd->device);
	struct ib_umem_odp *odp;
	unsigned long va;
	int i;

	if (flags & MLX5_IB_UPD_XLT_ZAP) {
		for (i = 0; i < nentries; i++, pklm++) {
			pklm->bcount = FUNC1(MLX5_IMR_MTT_SIZE);
			pklm->key = FUNC1(dev->null_mkey);
			pklm->va = 0;
		}
		return;
	}

	/*
	 * The locking here is pretty subtle. Ideally the implicit children
	 * list would be protected by the umem_mutex, however that is not
	 * possible. Instead this uses a weaker update-then-lock pattern:
	 *
	 *  srcu_read_lock()
	 *    <change children list>
	 *    mutex_lock(umem_mutex)
	 *     mlx5_ib_update_xlt()
	 *    mutex_unlock(umem_mutex)
	 *    destroy lkey
	 *
	 * ie any change the children list must be followed by the locked
	 * update_xlt before destroying.
	 *
	 * The umem_mutex provides the acquire/release semantic needed to make
	 * the children list visible to a racing thread. While SRCU is not
	 * technically required, using it gives consistent use of the SRCU
	 * locking around the children list.
	 */
	FUNC3(&FUNC7(mr->umem)->umem_mutex);
	FUNC3(&mr->dev->mr_srcu);

	odp = FUNC5(offset * MLX5_IMR_MTT_SIZE,
			 nentries * MLX5_IMR_MTT_SIZE, mr);

	for (i = 0; i < nentries; i++, pklm++) {
		pklm->bcount = FUNC1(MLX5_IMR_MTT_SIZE);
		va = (offset + i) * MLX5_IMR_MTT_SIZE;
		if (odp && FUNC2(odp) == va) {
			struct mlx5_ib_mr *mtt = odp->private;

			pklm->key = FUNC1(mtt->ibmr.lkey);
			odp = FUNC6(odp);
		} else {
			pklm->key = FUNC1(dev->null_mkey);
		}
		FUNC4(dev, "[%d] va %lx key %x\n",
			    i, va, FUNC0(pklm->key));
	}
}