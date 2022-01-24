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
struct usnic_vnic_res_chunk {int dummy; } ;
struct usnic_ib_qp_grp {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  USNIC_VNIC_RES_TYPE_RQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct usnic_vnic_res_chunk* FUNC1 (struct usnic_ib_qp_grp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usnic_vnic_res_chunk *
FUNC2(struct usnic_ib_qp_grp *qp_grp)
{
	FUNC0(&qp_grp->lock);
	/*
	 * The QP res chunk, used to derive qp indices,
	 * are just indices of the RQs
	 */
	return FUNC1(qp_grp, USNIC_VNIC_RES_TYPE_RQ);
}