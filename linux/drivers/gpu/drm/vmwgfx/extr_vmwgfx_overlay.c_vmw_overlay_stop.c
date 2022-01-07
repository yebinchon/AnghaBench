
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct vmw_stream {int paused; int buf; } ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {struct vmw_stream* stream; } ;


 int BUG_ON (int) ;
 int ERESTARTSYS ;
 int vmw_bo_unreference (int *) ;
 int vmw_overlay_move_buffer (struct vmw_private*,int ,int,int) ;
 int vmw_overlay_send_stop (struct vmw_private*,size_t,int) ;

__attribute__((used)) static int vmw_overlay_stop(struct vmw_private *dev_priv,
       uint32_t stream_id, bool pause,
       bool interruptible)
{
 struct vmw_overlay *overlay = dev_priv->overlay_priv;
 struct vmw_stream *stream = &overlay->stream[stream_id];
 int ret;


 if (!stream->buf)
  return 0;


 if (!stream->paused) {
  ret = vmw_overlay_send_stop(dev_priv, stream_id,
         interruptible);
  if (ret)
   return ret;


  ret = vmw_overlay_move_buffer(dev_priv, stream->buf, 0,
           interruptible);
  if (interruptible && ret == -ERESTARTSYS)
   return ret;
  else
   BUG_ON(ret != 0);
 }

 if (!pause) {
  vmw_bo_unreference(&stream->buf);
  stream->paused = 0;
 } else {
  stream->paused = 1;
 }

 return 0;
}
