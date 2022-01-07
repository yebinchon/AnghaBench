
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct wacom {TYPE_2__ led; } ;
struct kobject {int parent; } ;
struct kobj_attribute {int dummy; } ;
struct hid_device {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int select; } ;


 struct wacom* hid_get_drvdata (struct hid_device*) ;
 struct device* kobj_to_dev (int ) ;
 int sprintf (char*,char*,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t wacom_show_remote_mode(struct kobject *kobj,
          struct kobj_attribute *kattr,
          char *buf, int index)
{
 struct device *dev = kobj_to_dev(kobj->parent);
 struct hid_device *hdev = to_hid_device(dev);
 struct wacom *wacom = hid_get_drvdata(hdev);
 u8 mode;

 mode = wacom->led.groups[index].select;
 return sprintf(buf, "%d\n", mode < 3 ? mode : -1);
}
