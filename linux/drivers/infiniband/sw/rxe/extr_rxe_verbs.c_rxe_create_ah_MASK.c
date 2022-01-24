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
typedef  int /*<<< orphan*/  u32 ;
struct rxe_dev {int /*<<< orphan*/  ah_pool; } ;
struct rxe_ah {int /*<<< orphan*/  av; int /*<<< orphan*/  pelem; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rxe_dev*,struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ *) ; 
 struct rxe_ah* FUNC3 (struct ib_ah*) ; 
 struct rxe_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ib_ah *ibah, struct rdma_ah_attr *attr,
			 u32 flags, struct ib_udata *udata)

{
	int err;
	struct rxe_dev *rxe = FUNC4(ibah->device);
	struct rxe_ah *ah = FUNC3(ibah);

	err = FUNC1(rxe, attr);
	if (err)
		return err;

	err = FUNC0(&rxe->ah_pool, &ah->pelem);
	if (err)
		return err;

	FUNC2(attr, &ah->av);
	return 0;
}