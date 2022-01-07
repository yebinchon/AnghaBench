
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int mutex; TYPE_1__* stream; } ;
struct TYPE_2__ {int claimed; } ;


 int VMW_MAX_NUM_STREAMS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_overlay_available (struct vmw_private*) ;

int vmw_overlay_num_free_overlays(struct vmw_private *dev_priv)
{
 struct vmw_overlay *overlay = dev_priv->overlay_priv;
 int i, k;

 if (!vmw_overlay_available(dev_priv))
  return 0;

 mutex_lock(&overlay->mutex);

 for (i = 0, k = 0; i < VMW_MAX_NUM_STREAMS; i++)
  if (!overlay->stream[i].claimed)
   k++;

 mutex_unlock(&overlay->mutex);

 return k;
}
