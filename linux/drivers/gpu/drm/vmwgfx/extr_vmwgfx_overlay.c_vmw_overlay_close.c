
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {TYPE_1__* stream; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 int ENOSYS ;
 int VMW_MAX_NUM_STREAMS ;
 int WARN_ON (int) ;
 int kfree (struct vmw_overlay*) ;
 int vmw_overlay_stop (struct vmw_private*,int,int,int) ;

int vmw_overlay_close(struct vmw_private *dev_priv)
{
 struct vmw_overlay *overlay = dev_priv->overlay_priv;
 bool forgotten_buffer = 0;
 int i;

 if (!overlay)
  return -ENOSYS;

 for (i = 0; i < VMW_MAX_NUM_STREAMS; i++) {
  if (overlay->stream[i].buf) {
   forgotten_buffer = 1;
   vmw_overlay_stop(dev_priv, i, 0, 0);
  }
 }

 WARN_ON(forgotten_buffer);

 dev_priv->overlay_priv = ((void*)0);
 kfree(overlay);

 return 0;
}
