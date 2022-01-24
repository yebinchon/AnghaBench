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
struct i40iw_ucontext {int /*<<< orphan*/  qp_reg_mem_list_lock; int /*<<< orphan*/  cq_reg_mem_list_lock; } ;
struct i40iw_pbl {int on_list; int /*<<< orphan*/  list; } ;
struct i40iw_mr {int type; struct i40iw_pbl iwpbl; } ;

/* Variables and functions */
#define  IW_MEMREG_TYPE_CQ 129 
#define  IW_MEMREG_TYPE_QP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct i40iw_mr *iwmr,
			      struct i40iw_ucontext *ucontext)
{
	struct i40iw_pbl *iwpbl = &iwmr->iwpbl;
	unsigned long flags;

	switch (iwmr->type) {
	case IW_MEMREG_TYPE_CQ:
		FUNC1(&ucontext->cq_reg_mem_list_lock, flags);
		if (iwpbl->on_list) {
			iwpbl->on_list = false;
			FUNC0(&iwpbl->list);
		}
		FUNC2(&ucontext->cq_reg_mem_list_lock, flags);
		break;
	case IW_MEMREG_TYPE_QP:
		FUNC1(&ucontext->qp_reg_mem_list_lock, flags);
		if (iwpbl->on_list) {
			iwpbl->on_list = false;
			FUNC0(&iwpbl->list);
		}
		FUNC2(&ucontext->qp_reg_mem_list_lock, flags);
		break;
	default:
		break;
	}
}