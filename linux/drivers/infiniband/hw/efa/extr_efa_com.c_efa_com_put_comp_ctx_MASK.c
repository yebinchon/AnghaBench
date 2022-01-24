#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct efa_comp_ctx {scalar_t__ occupied; TYPE_2__* user_cqe; } ;
struct efa_com_admin_queue {int depth; int /*<<< orphan*/  efa_dev; } ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {TYPE_1__ acq_common_descriptor; } ;

/* Variables and functions */
 int EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct efa_com_admin_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline void FUNC2(struct efa_com_admin_queue *aq,
					struct efa_comp_ctx *comp_ctx)
{
	u16 cmd_id = comp_ctx->user_cqe->acq_common_descriptor.command &
		     EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK;
	u16 ctx_id = cmd_id & (aq->depth - 1);

	FUNC1(aq->efa_dev, "Put completion command_id %#x\n", cmd_id);
	comp_ctx->occupied = 0;
	FUNC0(aq, ctx_id);
}