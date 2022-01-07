
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_channel {int dummy; } ;
struct hv_device {struct vmbus_channel* channel; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int channel_mutex; } ;


 struct hv_device* device_to_hv_device (struct device*) ;
 int hv_process_channel_removal (struct vmbus_channel*) ;
 int kfree (struct hv_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ vmbus_connection ;

__attribute__((used)) static void vmbus_device_release(struct device *device)
{
 struct hv_device *hv_dev = device_to_hv_device(device);
 struct vmbus_channel *channel = hv_dev->channel;

 mutex_lock(&vmbus_connection.channel_mutex);
 hv_process_channel_removal(channel);
 mutex_unlock(&vmbus_connection.channel_mutex);
 kfree(hv_dev);
}
