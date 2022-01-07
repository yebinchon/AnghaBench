
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int cmdbuf_mutex; scalar_t__ query_cid_valid; } ;


 int __vmw_execbuf_release_pinned_bo (struct vmw_private*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void vmw_execbuf_release_pinned_bo(struct vmw_private *dev_priv)
{
 mutex_lock(&dev_priv->cmdbuf_mutex);
 if (dev_priv->query_cid_valid)
  __vmw_execbuf_release_pinned_bo(dev_priv, ((void*)0));
 mutex_unlock(&dev_priv->cmdbuf_mutex);
}
