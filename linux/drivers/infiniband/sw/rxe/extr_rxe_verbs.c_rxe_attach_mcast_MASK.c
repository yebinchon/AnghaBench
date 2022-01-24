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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u16 ;
struct rxe_qp {int dummy; } ;
struct rxe_mc_grp {int dummy; } ;
struct rxe_dev {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxe_mc_grp*) ; 
 int FUNC1 (struct rxe_dev*,struct rxe_qp*,struct rxe_mc_grp*) ; 
 int FUNC2 (struct rxe_dev*,union ib_gid*,struct rxe_mc_grp**) ; 
 struct rxe_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct rxe_qp* FUNC4 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC5(struct ib_qp *ibqp, union ib_gid *mgid, u16 mlid)
{
	int err;
	struct rxe_dev *rxe = FUNC3(ibqp->device);
	struct rxe_qp *qp = FUNC4(ibqp);
	struct rxe_mc_grp *grp;

	/* takes a ref on grp if successful */
	err = FUNC2(rxe, mgid, &grp);
	if (err)
		return err;

	err = FUNC1(rxe, qp, grp);

	FUNC0(grp);
	return err;
}