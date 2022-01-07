
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct efa_comp_ctx {scalar_t__ occupied; TYPE_2__* user_cqe; } ;
struct efa_com_admin_queue {int depth; int efa_dev; } ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {TYPE_1__ acq_common_descriptor; } ;


 int EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK ;
 int efa_com_dealloc_ctx_id (struct efa_com_admin_queue*,int) ;
 int ibdev_dbg (int ,char*,int) ;

__attribute__((used)) static inline void efa_com_put_comp_ctx(struct efa_com_admin_queue *aq,
     struct efa_comp_ctx *comp_ctx)
{
 u16 cmd_id = comp_ctx->user_cqe->acq_common_descriptor.command &
       EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK;
 u16 ctx_id = cmd_id & (aq->depth - 1);

 ibdev_dbg(aq->efa_dev, "Put completion command_id %#x\n", cmd_id);
 comp_ctx->occupied = 0;
 efa_com_dealloc_ctx_id(aq, ctx_id);
}
