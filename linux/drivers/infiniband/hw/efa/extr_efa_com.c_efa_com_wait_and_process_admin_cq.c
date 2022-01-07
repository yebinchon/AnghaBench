
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_comp_ctx {int dummy; } ;
struct efa_com_admin_queue {int state; } ;


 int EFA_AQ_STATE_POLLING_BIT ;
 int efa_com_wait_and_process_admin_cq_interrupts (struct efa_comp_ctx*,struct efa_com_admin_queue*) ;
 int efa_com_wait_and_process_admin_cq_polling (struct efa_comp_ctx*,struct efa_com_admin_queue*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int efa_com_wait_and_process_admin_cq(struct efa_comp_ctx *comp_ctx,
          struct efa_com_admin_queue *aq)
{
 if (test_bit(EFA_AQ_STATE_POLLING_BIT, &aq->state))
  return efa_com_wait_and_process_admin_cq_polling(comp_ctx, aq);

 return efa_com_wait_and_process_admin_cq_interrupts(comp_ctx, aq);
}
