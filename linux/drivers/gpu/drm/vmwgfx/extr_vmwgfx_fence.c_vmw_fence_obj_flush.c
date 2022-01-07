
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {int dummy; } ;
struct vmw_fence_obj {int dummy; } ;
struct TYPE_2__ {struct vmw_private* dev_priv; } ;


 int SVGA_SYNC_GENERIC ;
 TYPE_1__* fman_from_fence (struct vmw_fence_obj*) ;
 int vmw_fifo_ping_host (struct vmw_private*,int ) ;

void vmw_fence_obj_flush(struct vmw_fence_obj *fence)
{
 struct vmw_private *dev_priv = fman_from_fence(fence)->dev_priv;

 vmw_fifo_ping_host(dev_priv, SVGA_SYNC_GENERIC);
}
