
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int of_node; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,...) ;
 int of_property_count_elems_of_size (int ,char*,int) ;

int devfreq_event_get_edev_count(struct device *dev)
{
 int count;

 if (!dev->of_node) {
  dev_err(dev, "device does not have a device node entry\n");
  return -EINVAL;
 }

 count = of_property_count_elems_of_size(dev->of_node, "devfreq-events",
      sizeof(u32));
 if (count < 0) {
  dev_err(dev,
   "failed to get the count of devfreq-event in %pOF node\n",
   dev->of_node);
  return count;
 }

 return count;
}
