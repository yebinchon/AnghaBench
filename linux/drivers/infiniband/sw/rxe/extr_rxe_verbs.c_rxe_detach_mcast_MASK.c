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
struct rxe_dev {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (struct rxe_dev*,struct rxe_qp*,union ib_gid*) ; 
 struct rxe_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rxe_qp* FUNC2 (struct ib_qp*) ; 

__attribute__((used)) static int FUNC3(struct ib_qp *ibqp, union ib_gid *mgid, u16 mlid)
{
	struct rxe_dev *rxe = FUNC1(ibqp->device);
	struct rxe_qp *qp = FUNC2(ibqp);

	return FUNC0(rxe, qp, mgid);
}