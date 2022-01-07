
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int mutex; TYPE_1__* stream; } ;
struct TYPE_2__ {int claimed; } ;


 int BUG_ON (int) ;
 int ENOSYS ;
 size_t VMW_MAX_NUM_STREAMS ;
 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_overlay_stop (struct vmw_private*,size_t,int,int) ;

int vmw_overlay_unref(struct vmw_private *dev_priv, uint32_t stream_id)
{
 struct vmw_overlay *overlay = dev_priv->overlay_priv;

 BUG_ON(stream_id >= VMW_MAX_NUM_STREAMS);

 if (!overlay)
  return -ENOSYS;

 mutex_lock(&overlay->mutex);

 WARN_ON(!overlay->stream[stream_id].claimed);
 vmw_overlay_stop(dev_priv, stream_id, 0, 0);
 overlay->stream[stream_id].claimed = 0;

 mutex_unlock(&overlay->mutex);
 return 0;
}
