
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_ucontext {int qp_reg_mem_list_lock; int cq_reg_mem_list_lock; } ;
struct i40iw_pbl {int on_list; int list; } ;
struct i40iw_mr {int type; struct i40iw_pbl iwpbl; } ;




 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i40iw_del_memlist(struct i40iw_mr *iwmr,
         struct i40iw_ucontext *ucontext)
{
 struct i40iw_pbl *iwpbl = &iwmr->iwpbl;
 unsigned long flags;

 switch (iwmr->type) {
 case 129:
  spin_lock_irqsave(&ucontext->cq_reg_mem_list_lock, flags);
  if (iwpbl->on_list) {
   iwpbl->on_list = 0;
   list_del(&iwpbl->list);
  }
  spin_unlock_irqrestore(&ucontext->cq_reg_mem_list_lock, flags);
  break;
 case 128:
  spin_lock_irqsave(&ucontext->qp_reg_mem_list_lock, flags);
  if (iwpbl->on_list) {
   iwpbl->on_list = 0;
   list_del(&iwpbl->list);
  }
  spin_unlock_irqrestore(&ucontext->qp_reg_mem_list_lock, flags);
  break;
 default:
  break;
 }
}
