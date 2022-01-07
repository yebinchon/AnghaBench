
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int fifo; scalar_t__ cman; int fman; } ;


 int vmw_cmdbuf_man_destroy (scalar_t__) ;
 int vmw_fence_fifo_down (int ) ;
 int vmw_fifo_release (struct vmw_private*,int *) ;

__attribute__((used)) static void vmw_release_device_late(struct vmw_private *dev_priv)
{
 vmw_fence_fifo_down(dev_priv->fman);
 if (dev_priv->cman)
  vmw_cmdbuf_man_destroy(dev_priv->cman);

 vmw_fifo_release(dev_priv, &dev_priv->fifo);
}
