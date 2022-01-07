
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {int id; TYPE_1__* func; struct vmw_private* dev_priv; } ;
struct vmw_private {int resource_lock; struct idr* res_idr; } ;
struct idr {int dummy; } ;
struct TYPE_2__ {size_t res_type; } ;


 int idr_remove (struct idr*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void vmw_resource_release_id(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;
 struct idr *idr = &dev_priv->res_idr[res->func->res_type];

 spin_lock(&dev_priv->resource_lock);
 if (res->id != -1)
  idr_remove(idr, res->id);
 res->id = -1;
 spin_unlock(&dev_priv->resource_lock);
}
