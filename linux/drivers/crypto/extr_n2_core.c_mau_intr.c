
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {int lock; int qhandle; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int pr_err (char*,int ,unsigned long,...) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long sun4v_ncs_gethead (int ,unsigned long*) ;
 int sun4v_ncs_sethead_marker (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t mau_intr(int irq, void *dev_id)
{
 struct spu_queue *q = dev_id;
 unsigned long head, hv_ret;

 spin_lock(&q->lock);

 pr_err("CPU[%d]: Got MAU interrupt for qhdl[%lx]\n",
        smp_processor_id(), q->qhandle);

 hv_ret = sun4v_ncs_gethead(q->qhandle, &head);

 pr_err("CPU[%d]: MAU gethead[%lx] hv_ret[%lu]\n",
        smp_processor_id(), head, hv_ret);

 sun4v_ncs_sethead_marker(q->qhandle, head);

 spin_unlock(&q->lock);

 return IRQ_HANDLED;
}
