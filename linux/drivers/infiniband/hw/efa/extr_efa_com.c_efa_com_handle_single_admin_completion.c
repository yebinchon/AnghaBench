
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct efa_comp_ctx {int wait_event; int comp_size; scalar_t__ user_cqe; int comp_status; int status; } ;
struct efa_com_admin_queue {int state; int efa_dev; } ;
struct TYPE_2__ {int command; int status; } ;
struct efa_admin_acq_entry {TYPE_1__ acq_common_descriptor; } ;


 int EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK ;
 int EFA_AQ_STATE_POLLING_BIT ;
 int EFA_AQ_STATE_RUNNING_BIT ;
 int EFA_CMD_COMPLETED ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 struct efa_comp_ctx* efa_com_get_comp_ctx (struct efa_com_admin_queue*,int,int) ;
 int ibdev_err (int ,char*) ;
 int memcpy (scalar_t__,struct efa_admin_acq_entry*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void efa_com_handle_single_admin_completion(struct efa_com_admin_queue *aq,
         struct efa_admin_acq_entry *cqe)
{
 struct efa_comp_ctx *comp_ctx;
 u16 cmd_id;

 cmd_id = cqe->acq_common_descriptor.command &
   EFA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK;

 comp_ctx = efa_com_get_comp_ctx(aq, cmd_id, 0);
 if (!comp_ctx) {
  ibdev_err(aq->efa_dev,
     "comp_ctx is NULL. Changing the admin queue running state\n");
  clear_bit(EFA_AQ_STATE_RUNNING_BIT, &aq->state);
  return;
 }

 comp_ctx->status = EFA_CMD_COMPLETED;
 comp_ctx->comp_status = cqe->acq_common_descriptor.status;
 if (comp_ctx->user_cqe)
  memcpy(comp_ctx->user_cqe, cqe, comp_ctx->comp_size);

 if (!test_bit(EFA_AQ_STATE_POLLING_BIT, &aq->state))
  complete(&comp_ctx->wait_event);
}
