
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int mutex; TYPE_1__* stream; } ;
struct TYPE_2__ {int claimed; } ;


 int ENOSYS ;
 int ESRCH ;
 int VMW_MAX_NUM_STREAMS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int vmw_overlay_claim(struct vmw_private *dev_priv, uint32_t *out)
{
 struct vmw_overlay *overlay = dev_priv->overlay_priv;
 int i;

 if (!overlay)
  return -ENOSYS;

 mutex_lock(&overlay->mutex);

 for (i = 0; i < VMW_MAX_NUM_STREAMS; i++) {

  if (overlay->stream[i].claimed)
   continue;

  overlay->stream[i].claimed = 1;
  *out = i;
  mutex_unlock(&overlay->mutex);
  return 0;
 }

 mutex_unlock(&overlay->mutex);
 return -ESRCH;
}
