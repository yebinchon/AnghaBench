
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_stream {int buf; } ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int mutex; struct vmw_stream* stream; } ;


 int VMW_MAX_NUM_STREAMS ;
 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_overlay_stop (struct vmw_private*,int,int,int) ;

int vmw_overlay_stop_all(struct vmw_private *dev_priv)
{
 struct vmw_overlay *overlay = dev_priv->overlay_priv;
 int i, ret;

 if (!overlay)
  return 0;

 mutex_lock(&overlay->mutex);

 for (i = 0; i < VMW_MAX_NUM_STREAMS; i++) {
  struct vmw_stream *stream = &overlay->stream[i];
  if (!stream->buf)
   continue;

  ret = vmw_overlay_stop(dev_priv, i, 0, 0);
  WARN_ON(ret != 0);
 }

 mutex_unlock(&overlay->mutex);

 return 0;
}
