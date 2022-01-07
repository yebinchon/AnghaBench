
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;


 int vmw_bo_pin_in_placement (struct vmw_private*,struct vmw_buffer_object*,int *,int) ;
 int vmw_vram_placement ;

int vmw_bo_pin_in_vram(struct vmw_private *dev_priv,
         struct vmw_buffer_object *buf,
         bool interruptible)
{
 return vmw_bo_pin_in_placement(dev_priv, buf, &vmw_vram_placement,
           interruptible);
}
