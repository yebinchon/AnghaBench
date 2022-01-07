
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_intr {struct dpu_hw_intr* save_irq_status; struct dpu_hw_intr* cache_irq_mask; } ;


 int kfree (struct dpu_hw_intr*) ;

void dpu_hw_intr_destroy(struct dpu_hw_intr *intr)
{
 if (intr) {
  kfree(intr->cache_irq_mask);
  kfree(intr->save_irq_status);
  kfree(intr);
 }
}
