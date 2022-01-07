
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int cmdbuf_mutex; } ;
typedef enum vmw_res_type { ____Placeholder_vmw_res_type } vmw_res_type ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_res_max ;
 int vmw_resource_evict_type (struct vmw_private*,int) ;

void vmw_resource_evict_all(struct vmw_private *dev_priv)
{
 enum vmw_res_type type;

 mutex_lock(&dev_priv->cmdbuf_mutex);

 for (type = 0; type < vmw_res_max; ++type)
  vmw_resource_evict_type(dev_priv, type);

 mutex_unlock(&dev_priv->cmdbuf_mutex);
}
