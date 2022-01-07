
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {TYPE_1__* ldu_priv; } ;
struct TYPE_2__ {int active; } ;


 int BUG_ON (int) ;
 int ENOSYS ;
 int kfree (TYPE_1__*) ;
 int list_empty (int *) ;

int vmw_kms_ldu_close_display(struct vmw_private *dev_priv)
{
 if (!dev_priv->ldu_priv)
  return -ENOSYS;

 BUG_ON(!list_empty(&dev_priv->ldu_priv->active));

 kfree(dev_priv->ldu_priv);

 return 0;
}
