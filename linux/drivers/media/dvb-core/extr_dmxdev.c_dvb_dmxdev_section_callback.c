
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {int error; int queue; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ sec; } ;
struct dmxdev_filter {scalar_t__ state; TYPE_4__ buffer; TYPE_3__* dev; TYPE_2__ params; int vb2_ctx; int timer; } ;
struct dmx_section_filter {struct dmxdev_filter* priv; } ;
struct TYPE_7__ {int lock; } ;


 scalar_t__ DMXDEV_STATE_DONE ;
 scalar_t__ DMXDEV_STATE_GO ;
 int DMX_ONESHOT ;
 int del_timer (int *) ;
 int dprintk (char*,int,int const*) ;
 int dvb_dmxdev_buffer_write (TYPE_4__*,int const*,size_t) ;
 int dvb_vb2_fill_buffer (int *,int const*,size_t,int *) ;
 scalar_t__ dvb_vb2_is_streaming (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int dvb_dmxdev_section_callback(const u8 *buffer1, size_t buffer1_len,
           const u8 *buffer2, size_t buffer2_len,
           struct dmx_section_filter *filter,
           u32 *buffer_flags)
{
 struct dmxdev_filter *dmxdevfilter = filter->priv;
 int ret;

 if (!dvb_vb2_is_streaming(&dmxdevfilter->vb2_ctx) &&
     dmxdevfilter->buffer.error) {
  wake_up(&dmxdevfilter->buffer.queue);
  return 0;
 }
 spin_lock(&dmxdevfilter->dev->lock);
 if (dmxdevfilter->state != DMXDEV_STATE_GO) {
  spin_unlock(&dmxdevfilter->dev->lock);
  return 0;
 }
 del_timer(&dmxdevfilter->timer);
 dprintk("section callback %*ph\n", 6, buffer1);
 if (dvb_vb2_is_streaming(&dmxdevfilter->vb2_ctx)) {
  ret = dvb_vb2_fill_buffer(&dmxdevfilter->vb2_ctx,
       buffer1, buffer1_len,
       buffer_flags);
  if (ret == buffer1_len)
   ret = dvb_vb2_fill_buffer(&dmxdevfilter->vb2_ctx,
        buffer2, buffer2_len,
        buffer_flags);
 } else {
  ret = dvb_dmxdev_buffer_write(&dmxdevfilter->buffer,
           buffer1, buffer1_len);
  if (ret == buffer1_len) {
   ret = dvb_dmxdev_buffer_write(&dmxdevfilter->buffer,
            buffer2, buffer2_len);
  }
 }
 if (ret < 0)
  dmxdevfilter->buffer.error = ret;
 if (dmxdevfilter->params.sec.flags & DMX_ONESHOT)
  dmxdevfilter->state = DMXDEV_STATE_DONE;
 spin_unlock(&dmxdevfilter->dev->lock);
 wake_up(&dmxdevfilter->buffer.queue);
 return 0;
}
