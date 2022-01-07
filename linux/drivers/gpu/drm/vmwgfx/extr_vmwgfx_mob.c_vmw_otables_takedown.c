
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int otables; } ;
struct vmw_private {TYPE_1__ otable_batch; } ;


 int kfree (int ) ;
 int vmw_otable_batch_takedown (struct vmw_private*,TYPE_1__*) ;

void vmw_otables_takedown(struct vmw_private *dev_priv)
{
 vmw_otable_batch_takedown(dev_priv, &dev_priv->otable_batch);
 kfree(dev_priv->otable_batch.otables);
}
