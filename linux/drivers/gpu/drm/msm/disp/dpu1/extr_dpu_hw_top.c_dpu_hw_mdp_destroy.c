
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_mdp {int base; } ;


 int dpu_hw_blk_destroy (int *) ;
 int kfree (struct dpu_hw_mdp*) ;

void dpu_hw_mdp_destroy(struct dpu_hw_mdp *mdp)
{
 if (mdp)
  dpu_hw_blk_destroy(&mdp->base);
 kfree(mdp);
}
