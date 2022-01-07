
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int reservation_sem; } ;


 int __vmw_svga_enable (struct vmw_private*) ;
 int ttm_read_lock (int *,int) ;
 int ttm_read_unlock (int *) ;

void vmw_svga_enable(struct vmw_private *dev_priv)
{
 (void) ttm_read_lock(&dev_priv->reservation_sem, 0);
 __vmw_svga_enable(dev_priv);
 ttm_read_unlock(&dev_priv->reservation_sem);
}
