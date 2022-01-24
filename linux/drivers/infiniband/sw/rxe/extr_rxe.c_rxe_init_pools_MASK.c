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
struct TYPE_2__ {int /*<<< orphan*/  max_total_mcast_qp_attach; int /*<<< orphan*/  max_mcast_grp; int /*<<< orphan*/  max_mw; int /*<<< orphan*/  max_mr; int /*<<< orphan*/  max_cq; int /*<<< orphan*/  max_qp; int /*<<< orphan*/  max_srq; int /*<<< orphan*/  max_ah; int /*<<< orphan*/  max_pd; } ;
struct rxe_dev {int /*<<< orphan*/  uc_pool; int /*<<< orphan*/  pd_pool; int /*<<< orphan*/  ah_pool; int /*<<< orphan*/  srq_pool; int /*<<< orphan*/  qp_pool; int /*<<< orphan*/  cq_pool; int /*<<< orphan*/  mr_pool; int /*<<< orphan*/  mw_pool; int /*<<< orphan*/  mc_grp_pool; TYPE_1__ attr; int /*<<< orphan*/  mc_elem_pool; int /*<<< orphan*/  max_ucontext; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXE_TYPE_AH ; 
 int /*<<< orphan*/  RXE_TYPE_CQ ; 
 int /*<<< orphan*/  RXE_TYPE_MC_ELEM ; 
 int /*<<< orphan*/  RXE_TYPE_MC_GRP ; 
 int /*<<< orphan*/  RXE_TYPE_MR ; 
 int /*<<< orphan*/  RXE_TYPE_MW ; 
 int /*<<< orphan*/  RXE_TYPE_PD ; 
 int /*<<< orphan*/  RXE_TYPE_QP ; 
 int /*<<< orphan*/  RXE_TYPE_SRQ ; 
 int /*<<< orphan*/  RXE_TYPE_UC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rxe_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rxe_dev *rxe)
{
	int err;

	err = FUNC1(rxe, &rxe->uc_pool, RXE_TYPE_UC,
			    rxe->max_ucontext);
	if (err)
		goto err1;

	err = FUNC1(rxe, &rxe->pd_pool, RXE_TYPE_PD,
			    rxe->attr.max_pd);
	if (err)
		goto err2;

	err = FUNC1(rxe, &rxe->ah_pool, RXE_TYPE_AH,
			    rxe->attr.max_ah);
	if (err)
		goto err3;

	err = FUNC1(rxe, &rxe->srq_pool, RXE_TYPE_SRQ,
			    rxe->attr.max_srq);
	if (err)
		goto err4;

	err = FUNC1(rxe, &rxe->qp_pool, RXE_TYPE_QP,
			    rxe->attr.max_qp);
	if (err)
		goto err5;

	err = FUNC1(rxe, &rxe->cq_pool, RXE_TYPE_CQ,
			    rxe->attr.max_cq);
	if (err)
		goto err6;

	err = FUNC1(rxe, &rxe->mr_pool, RXE_TYPE_MR,
			    rxe->attr.max_mr);
	if (err)
		goto err7;

	err = FUNC1(rxe, &rxe->mw_pool, RXE_TYPE_MW,
			    rxe->attr.max_mw);
	if (err)
		goto err8;

	err = FUNC1(rxe, &rxe->mc_grp_pool, RXE_TYPE_MC_GRP,
			    rxe->attr.max_mcast_grp);
	if (err)
		goto err9;

	err = FUNC1(rxe, &rxe->mc_elem_pool, RXE_TYPE_MC_ELEM,
			    rxe->attr.max_total_mcast_qp_attach);
	if (err)
		goto err10;

	return 0;

err10:
	FUNC0(&rxe->mc_grp_pool);
err9:
	FUNC0(&rxe->mw_pool);
err8:
	FUNC0(&rxe->mr_pool);
err7:
	FUNC0(&rxe->cq_pool);
err6:
	FUNC0(&rxe->qp_pool);
err5:
	FUNC0(&rxe->srq_pool);
err4:
	FUNC0(&rxe->ah_pool);
err3:
	FUNC0(&rxe->pd_pool);
err2:
	FUNC0(&rxe->uc_pool);
err1:
	return err;
}