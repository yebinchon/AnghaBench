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
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_qp {int /*<<< orphan*/  qp_num; scalar_t__ pd; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,union ib_gid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
	struct mlx5_ib_dev *dev = FUNC2(ibqp->device);
	int err;
	u16 uid;

	uid = ibqp->pd ?
		FUNC3(ibqp->pd)->uid : 0;
	err = FUNC0(dev->mdev, gid, ibqp->qp_num, uid);
	if (err)
		FUNC1(dev, "failed detaching QPN 0x%x, MGID %pI6\n",
			     ibqp->qp_num, gid->raw);

	return err;
}