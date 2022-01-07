
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct creq_base {int dummy; } ;
struct bnxt_qplib_hwq {scalar_t__ pbl_ptr; int cons; } ;
struct bnxt_qplib_rcfw {int worker; struct bnxt_qplib_hwq creq; } ;
typedef int irqreturn_t ;


 int HWQ_CMP (int ,struct bnxt_qplib_hwq*) ;
 int IRQ_HANDLED ;
 size_t get_creq_idx (int ) ;
 size_t get_creq_pg (int ) ;
 int prefetch (struct creq_base*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t bnxt_qplib_creq_irq(int irq, void *dev_instance)
{
 struct bnxt_qplib_rcfw *rcfw = dev_instance;
 struct bnxt_qplib_hwq *creq = &rcfw->creq;
 struct creq_base **creq_ptr;
 u32 sw_cons;


 sw_cons = HWQ_CMP(creq->cons, creq);
 creq_ptr = (struct creq_base **)rcfw->creq.pbl_ptr;
 prefetch(&creq_ptr[get_creq_pg(sw_cons)][get_creq_idx(sw_cons)]);

 tasklet_schedule(&rcfw->worker);

 return IRQ_HANDLED;
}
