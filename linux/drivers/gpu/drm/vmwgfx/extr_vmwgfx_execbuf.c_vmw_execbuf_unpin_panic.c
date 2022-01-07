
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int dummy_query_bo_pinned; int dummy_query_bo; int pinned_bo; } ;


 int HZ ;
 int VMW_DEBUG_USER (char*) ;
 int vmw_bo_pin_reserved (int ,int) ;
 int vmw_fallback_wait (struct vmw_private*,int,int,int ,int,int) ;

__attribute__((used)) static void vmw_execbuf_unpin_panic(struct vmw_private *dev_priv)
{
 VMW_DEBUG_USER("Can't unpin query buffer. Trying to recover.\n");

 (void) vmw_fallback_wait(dev_priv, 0, 1, 0, 0, 10*HZ);
 vmw_bo_pin_reserved(dev_priv->pinned_bo, 0);
 if (dev_priv->dummy_query_bo_pinned) {
  vmw_bo_pin_reserved(dev_priv->dummy_query_bo, 0);
  dev_priv->dummy_query_bo_pinned = 0;
 }
}
