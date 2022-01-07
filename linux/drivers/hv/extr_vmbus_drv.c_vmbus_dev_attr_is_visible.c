
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int umode_t ;
struct kobject {int dummy; } ;
struct hv_device {TYPE_2__* channel; } ;
struct device {int dummy; } ;
struct attribute {int mode; } ;
struct TYPE_18__ {struct attribute attr; } ;
struct TYPE_17__ {struct attribute attr; } ;
struct TYPE_16__ {struct attribute attr; } ;
struct TYPE_15__ {struct attribute attr; } ;
struct TYPE_14__ {struct attribute attr; } ;
struct TYPE_13__ {struct attribute attr; } ;
struct TYPE_12__ {struct attribute attr; } ;
struct TYPE_10__ {int monitor_allocated; } ;
struct TYPE_11__ {TYPE_1__ offermsg; } ;


 TYPE_9__ dev_attr_client_monitor_conn_id ;
 TYPE_8__ dev_attr_client_monitor_latency ;
 TYPE_7__ dev_attr_client_monitor_pending ;
 TYPE_6__ dev_attr_monitor_id ;
 TYPE_5__ dev_attr_server_monitor_conn_id ;
 TYPE_4__ dev_attr_server_monitor_latency ;
 TYPE_3__ dev_attr_server_monitor_pending ;
 struct hv_device* device_to_hv_device (struct device*) ;
 struct device* kobj_to_dev (struct kobject*) ;

__attribute__((used)) static umode_t vmbus_dev_attr_is_visible(struct kobject *kobj,
      struct attribute *attr, int idx)
{
 struct device *dev = kobj_to_dev(kobj);
 const struct hv_device *hv_dev = device_to_hv_device(dev);


 if (!hv_dev->channel->offermsg.monitor_allocated &&
     (attr == &dev_attr_monitor_id.attr ||
      attr == &dev_attr_server_monitor_pending.attr ||
      attr == &dev_attr_client_monitor_pending.attr ||
      attr == &dev_attr_server_monitor_latency.attr ||
      attr == &dev_attr_client_monitor_latency.attr ||
      attr == &dev_attr_server_monitor_conn_id.attr ||
      attr == &dev_attr_client_monitor_conn_id.attr))
  return 0;

 return attr->mode;
}
