
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_ring_buffer_debug_info {int current_read_index; } ;
struct hv_device {TYPE_1__* channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int outbound; } ;


 int ENODEV ;
 struct hv_device* device_to_hv_device (struct device*) ;
 int hv_ringbuffer_get_debuginfo (int *,struct hv_ring_buffer_debug_info*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t out_read_index_show(struct device *dev,
       struct device_attribute *dev_attr, char *buf)
{
 struct hv_device *hv_dev = device_to_hv_device(dev);
 struct hv_ring_buffer_debug_info outbound;
 int ret;

 if (!hv_dev->channel)
  return -ENODEV;

 ret = hv_ringbuffer_get_debuginfo(&hv_dev->channel->outbound,
       &outbound);
 if (ret < 0)
  return ret;
 return sprintf(buf, "%d\n", outbound.current_read_index);
}
