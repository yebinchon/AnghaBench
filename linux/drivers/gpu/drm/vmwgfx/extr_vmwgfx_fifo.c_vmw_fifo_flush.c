
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {scalar_t__ cman; } ;


 int might_sleep () ;
 int vmw_cmdbuf_cur_flush (scalar_t__,int) ;

int vmw_fifo_flush(struct vmw_private *dev_priv, bool interruptible)
{
 might_sleep();

 if (dev_priv->cman)
  return vmw_cmdbuf_cur_flush(dev_priv->cman, interruptible);
 else
  return 0;
}
