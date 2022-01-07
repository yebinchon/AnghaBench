
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int fence_queue_waiters; } ;


 int SVGA_IRQFLAG_ANY_FENCE ;
 int vmw_generic_waiter_add (struct vmw_private*,int ,int *) ;

void vmw_seqno_waiter_add(struct vmw_private *dev_priv)
{
 vmw_generic_waiter_add(dev_priv, SVGA_IRQFLAG_ANY_FENCE,
          &dev_priv->fence_queue_waiters);
}
