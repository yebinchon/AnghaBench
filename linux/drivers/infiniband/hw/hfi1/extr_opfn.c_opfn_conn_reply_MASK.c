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
typedef  size_t u8 ;
typedef  int u64 ;
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {size_t curr; int /*<<< orphan*/  lock; int /*<<< orphan*/  completed; } ;
struct hfi1_qp_priv {TYPE_1__ opfn; } ;
struct hfi1_opfn_type {scalar_t__ (* reply ) (struct rvt_qp*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t STL_VERBS_EXTD_MAX ; 
 size_t STL_VERBS_EXTD_NONE ; 
 struct hfi1_opfn_type* hfi1_opfn_handlers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct rvt_qp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_qp*) ; 

void FUNC6(struct rvt_qp *qp, u64 data)
{
	struct hfi1_qp_priv *priv = qp->priv;
	struct hfi1_opfn_type *extd;
	u8 capcode;
	unsigned long flags;

	FUNC5(qp);
	capcode = data & 0xf;
	FUNC4(qp, capcode, data);
	if (!capcode || capcode >= STL_VERBS_EXTD_MAX)
		return;

	FUNC1(&priv->opfn.lock, flags);
	/*
	 * Either there is no previous request or the reply is not for the
	 * current request
	 */
	if (!priv->opfn.curr || capcode != priv->opfn.curr)
		goto done;

	extd = &hfi1_opfn_handlers[capcode];

	if (!extd || !extd->reply)
		goto clear;

	if (extd->reply(qp, data))
		priv->opfn.completed |= FUNC0(capcode);
clear:
	/*
	 * Clear opfn.curr to indicate that the previous request is no longer in
	 * progress
	 */
	priv->opfn.curr = STL_VERBS_EXTD_NONE;
	FUNC5(qp);
done:
	FUNC2(&priv->opfn.lock, flags);
}