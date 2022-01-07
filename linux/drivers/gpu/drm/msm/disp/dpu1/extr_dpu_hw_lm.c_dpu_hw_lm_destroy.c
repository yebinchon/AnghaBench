
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_mixer {int base; } ;


 int dpu_hw_blk_destroy (int *) ;
 int kfree (struct dpu_hw_mixer*) ;

void dpu_hw_lm_destroy(struct dpu_hw_mixer *lm)
{
 if (lm)
  dpu_hw_blk_destroy(&lm->base);
 kfree(lm);
}
