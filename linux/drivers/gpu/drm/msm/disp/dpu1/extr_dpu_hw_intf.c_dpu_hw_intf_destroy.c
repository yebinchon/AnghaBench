
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_intf {int base; } ;


 int dpu_hw_blk_destroy (int *) ;
 int kfree (struct dpu_hw_intf*) ;

void dpu_hw_intf_destroy(struct dpu_hw_intf *intf)
{
 if (intf)
  dpu_hw_blk_destroy(&intf->base);
 kfree(intf);
}
