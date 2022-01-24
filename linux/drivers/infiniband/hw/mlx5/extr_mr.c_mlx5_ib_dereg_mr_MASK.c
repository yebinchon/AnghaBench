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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct mlx5_ib_mr {struct mlx5_ib_mr* klm_mr; TYPE_1__ ibmr; struct mlx5_ib_mr* mtt_mr; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {scalar_t__ type; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ IB_MR_TYPE_INTEGRITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_mr* FUNC2 (struct ib_mr*) ; 

int FUNC3(struct ib_mr *ibmr, struct ib_udata *udata)
{
	struct mlx5_ib_mr *mmr = FUNC2(ibmr);

	if (ibmr->type == IB_MR_TYPE_INTEGRITY) {
		FUNC0(FUNC1(mmr->mtt_mr->ibmr.device), mmr->mtt_mr);
		FUNC0(FUNC1(mmr->klm_mr->ibmr.device), mmr->klm_mr);
	}

	FUNC0(FUNC1(ibmr->device), mmr);

	return 0;
}