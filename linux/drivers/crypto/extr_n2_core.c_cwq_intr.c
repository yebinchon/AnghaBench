
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {unsigned long head; int lock; int qhandle; } ;
typedef int irqreturn_t ;


 unsigned long HV_EOK ;
 int IRQ_HANDLED ;
 int pr_err (char*,int ,unsigned long,...) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long spu_next_offset (struct spu_queue*,unsigned long) ;
 unsigned long sun4v_ncs_gethead (int ,unsigned long*) ;
 unsigned long sun4v_ncs_sethead_marker (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t cwq_intr(int irq, void *dev_id)
{
 unsigned long off, new_head, hv_ret;
 struct spu_queue *q = dev_id;

 pr_err("CPU[%d]: Got CWQ interrupt for qhdl[%lx]\n",
        smp_processor_id(), q->qhandle);

 spin_lock(&q->lock);

 hv_ret = sun4v_ncs_gethead(q->qhandle, &new_head);

 pr_err("CPU[%d]: CWQ gethead[%lx] hv_ret[%lu]\n",
        smp_processor_id(), new_head, hv_ret);

 for (off = q->head; off != new_head; off = spu_next_offset(q, off)) {

 }

 hv_ret = sun4v_ncs_sethead_marker(q->qhandle, new_head);
 if (hv_ret == HV_EOK)
  q->head = new_head;

 spin_unlock(&q->lock);

 return IRQ_HANDLED;
}
