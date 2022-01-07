
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_device_id {scalar_t__ flags; } ;
struct input_dev {int name; int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 scalar_t__ input_match_device_id (struct input_dev*,struct input_device_id const*) ;
 struct input_device_id* joydev_blacklist ;

__attribute__((used)) static bool joydev_dev_is_blacklisted(struct input_dev *dev)
{
 const struct input_device_id *id;

 for (id = joydev_blacklist; id->flags; id++) {
  if (input_match_device_id(dev, id)) {
   dev_dbg(&dev->dev,
    "joydev: blacklisting '%s'\n", dev->name);
   return 1;
  }
 }

 return 0;
}
