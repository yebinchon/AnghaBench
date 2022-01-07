
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_pingpong {int base; } ;


 int dpu_hw_blk_destroy (int *) ;
 int kfree (struct dpu_hw_pingpong*) ;

void dpu_hw_pingpong_destroy(struct dpu_hw_pingpong *pp)
{
 if (pp)
  dpu_hw_blk_destroy(&pp->base);
 kfree(pp);
}
