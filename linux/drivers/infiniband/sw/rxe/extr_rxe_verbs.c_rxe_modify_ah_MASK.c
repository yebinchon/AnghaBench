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
struct rxe_dev {int dummy; } ;
struct rxe_ah {int /*<<< orphan*/  av; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (struct rxe_dev*,struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_ah_attr*,int /*<<< orphan*/ *) ; 
 struct rxe_ah* FUNC2 (struct ib_ah*) ; 
 struct rxe_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ib_ah *ibah, struct rdma_ah_attr *attr)
{
	int err;
	struct rxe_dev *rxe = FUNC3(ibah->device);
	struct rxe_ah *ah = FUNC2(ibah);

	err = FUNC0(rxe, attr);
	if (err)
		return err;

	FUNC1(attr, &ah->av);
	return 0;
}