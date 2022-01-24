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
typedef  union ib_gid {int dummy; } ib_gid ;
struct rxe_mc_grp {struct rxe_dev* rxe; int /*<<< orphan*/  mcg_lock; int /*<<< orphan*/  qp_list; } ;
struct TYPE_2__ {scalar_t__ max_mcast_qp_attach; } ;
struct rxe_dev {int /*<<< orphan*/  mc_grp_pool; TYPE_1__ attr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_mc_grp*,union ib_gid*) ; 
 struct rxe_mc_grp* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rxe_mc_grp*) ; 
 int FUNC4 (struct rxe_dev*,union ib_gid*) ; 
 struct rxe_mc_grp* FUNC5 (int /*<<< orphan*/ *,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct rxe_dev *rxe, union ib_gid *mgid,
		      struct rxe_mc_grp **grp_p)
{
	int err;
	struct rxe_mc_grp *grp;

	if (rxe->attr.max_mcast_qp_attach == 0) {
		err = -EINVAL;
		goto err1;
	}

	grp = FUNC5(&rxe->mc_grp_pool, mgid);
	if (grp)
		goto done;

	grp = FUNC2(&rxe->mc_grp_pool);
	if (!grp) {
		err = -ENOMEM;
		goto err1;
	}

	FUNC0(&grp->qp_list);
	FUNC6(&grp->mcg_lock);
	grp->rxe = rxe;

	FUNC1(grp, mgid);

	err = FUNC4(rxe, mgid);
	if (err)
		goto err2;

done:
	*grp_p = grp;
	return 0;

err2:
	FUNC3(grp);
err1:
	return err;
}