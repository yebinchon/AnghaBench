
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int child_relid; } ;
struct kobject {int kset; } ;
struct vmbus_channel {TYPE_1__ offermsg; struct kobject kobj; } ;
struct device {int dummy; } ;
struct hv_device {int channels_kset; struct device device; } ;


 int KOBJ_ADD ;
 int dev_err (struct device const*,char*) ;
 int kobject_init_and_add (struct kobject*,int *,int *,char*,int ) ;
 int kobject_uevent (struct kobject*,int ) ;
 int sysfs_create_group (struct kobject*,int *) ;
 int vmbus_chan_group ;
 int vmbus_chan_ktype ;

int vmbus_add_channel_kobj(struct hv_device *dev, struct vmbus_channel *channel)
{
 const struct device *device = &dev->device;
 struct kobject *kobj = &channel->kobj;
 u32 relid = channel->offermsg.child_relid;
 int ret;

 kobj->kset = dev->channels_kset;
 ret = kobject_init_and_add(kobj, &vmbus_chan_ktype, ((void*)0),
       "%u", relid);
 if (ret)
  return ret;

 ret = sysfs_create_group(kobj, &vmbus_chan_group);

 if (ret) {




  dev_err(device, "Unable to set up channel sysfs files\n");
  return ret;
 }

 kobject_uevent(kobj, KOBJ_ADD);

 return 0;
}
