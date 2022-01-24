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
struct list_head {int dummy; } ;
struct i40iw_pfpdu {int /*<<< orphan*/  mode; struct list_head rxlist; } ;
struct i40iw_sc_qp {struct i40iw_pfpdu pfpdu; } ;
struct i40iw_puda_rsrc {int dummy; } ;
struct i40iw_puda_buf {int dummy; } ;

/* Variables and functions */
 struct i40iw_puda_buf* FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_puda_rsrc*,struct i40iw_puda_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 

void FUNC3(struct i40iw_puda_rsrc *ieq, struct i40iw_sc_qp *qp)
{
	struct i40iw_puda_buf *buf;
	struct i40iw_pfpdu *pfpdu = &qp->pfpdu;
	struct list_head *rxlist = &pfpdu->rxlist;

	if (!pfpdu->mode)
		return;
	while (!FUNC2(rxlist)) {
		buf = FUNC0(rxlist);
		FUNC1(ieq, buf);
	}
}