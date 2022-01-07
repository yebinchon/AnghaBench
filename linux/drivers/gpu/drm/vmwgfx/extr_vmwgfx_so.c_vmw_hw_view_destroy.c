
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int id; struct vmw_private* dev_priv; } ;
struct vmw_private {int binding_mutex; } ;


 int WARN_ON (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_view_destroy (struct vmw_resource*) ;

__attribute__((used)) static void vmw_hw_view_destroy(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;

 mutex_lock(&dev_priv->binding_mutex);
 WARN_ON(vmw_view_destroy(res));
 res->id = -1;
 mutex_unlock(&dev_priv->binding_mutex);
}
