
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {int id; TYPE_1__* func; struct vmw_private* dev_priv; } ;
struct vmw_private {int resource_lock; struct idr* res_idr; } ;
struct idr {int dummy; } ;
struct TYPE_2__ {size_t res_type; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int idr_alloc (struct idr*,struct vmw_resource*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int vmw_resource_alloc_id(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;
 int ret;
 struct idr *idr = &dev_priv->res_idr[res->func->res_type];

 BUG_ON(res->id != -1);

 idr_preload(GFP_KERNEL);
 spin_lock(&dev_priv->resource_lock);

 ret = idr_alloc(idr, res, 1, 0, GFP_NOWAIT);
 if (ret >= 0)
  res->id = ret;

 spin_unlock(&dev_priv->resource_lock);
 idr_preload_end();
 return ret < 0 ? ret : 0;
}
