
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmbus_channel_rescind_offer {int child_relid; } ;
struct vmbus_channel_message_header {int dummy; } ;
struct vmbus_channel {scalar_t__ state; int rescind_event; int * primary_channel; TYPE_1__* device_obj; int (* chn_rescind_callback ) (struct vmbus_channel*) ;int probe_done; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int channel_mutex; int offer_in_progress; } ;
struct TYPE_3__ {int device; } ;


 scalar_t__ CHANNEL_OPEN_STATE ;
 int READ_ONCE (int ) ;
 scalar_t__ atomic_read (int *) ;
 int check_ready_for_suspend_event () ;
 int complete (int *) ;
 struct device* get_device (int *) ;
 int hv_process_channel_removal (struct vmbus_channel*) ;
 scalar_t__ is_hvsock_channel (struct vmbus_channel*) ;
 scalar_t__ is_sub_channel (struct vmbus_channel*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 struct vmbus_channel* relid2channel (int ) ;
 int stub1 (struct vmbus_channel*) ;
 int trace_vmbus_onoffer_rescind (struct vmbus_channel_rescind_offer*) ;
 TYPE_2__ vmbus_connection ;
 int vmbus_device_unregister (TYPE_1__*) ;
 int vmbus_rescind_cleanup (struct vmbus_channel*) ;
 int vmbus_reset_channel_cb (struct vmbus_channel*) ;

__attribute__((used)) static void vmbus_onoffer_rescind(struct vmbus_channel_message_header *hdr)
{
 struct vmbus_channel_rescind_offer *rescind;
 struct vmbus_channel *channel;
 struct device *dev;
 bool clean_up_chan_for_suspend;

 rescind = (struct vmbus_channel_rescind_offer *)hdr;

 trace_vmbus_onoffer_rescind(rescind);
 while (atomic_read(&vmbus_connection.offer_in_progress) != 0) {




  msleep(1);
 }

 mutex_lock(&vmbus_connection.channel_mutex);
 channel = relid2channel(rescind->child_relid);
 mutex_unlock(&vmbus_connection.channel_mutex);

 if (channel == ((void*)0)) {





  return;
 }

 clean_up_chan_for_suspend = is_hvsock_channel(channel) ||
        is_sub_channel(channel);




 vmbus_reset_channel_cb(channel);




 vmbus_rescind_cleanup(channel);
 while (READ_ONCE(channel->probe_done) == 0) {




  msleep(1);
 }





 if (channel->device_obj) {
  if (channel->chn_rescind_callback) {
   channel->chn_rescind_callback(channel);

   if (clean_up_chan_for_suspend)
    check_ready_for_suspend_event();

   return;
  }




  dev = get_device(&channel->device_obj->device);
  if (dev) {
   vmbus_device_unregister(channel->device_obj);
   put_device(dev);
  }
 }
 if (channel->primary_channel != ((void*)0)) {







  mutex_lock(&vmbus_connection.channel_mutex);
  if (channel->state == CHANNEL_OPEN_STATE) {




   hv_process_channel_removal(channel);
  } else {
   complete(&channel->rescind_event);
  }
  mutex_unlock(&vmbus_connection.channel_mutex);
 }



 if (clean_up_chan_for_suspend)
  check_ready_for_suspend_event();
}
