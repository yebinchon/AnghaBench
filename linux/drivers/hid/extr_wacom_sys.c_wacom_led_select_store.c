
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* groups; } ;
struct wacom {int lock; TYPE_1__ led; } ;
struct hid_device {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {unsigned int select; } ;


 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hid_device* to_hid_device (struct device*) ;
 int wacom_led_control (struct wacom*) ;

__attribute__((used)) static ssize_t wacom_led_select_store(struct device *dev, int set_id,
          const char *buf, size_t count)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct wacom *wacom = hid_get_drvdata(hdev);
 unsigned int id;
 int err;

 err = kstrtouint(buf, 10, &id);
 if (err)
  return err;

 mutex_lock(&wacom->lock);

 wacom->led.groups[set_id].select = id & 0x3;
 err = wacom_led_control(wacom);

 mutex_unlock(&wacom->lock);

 return err < 0 ? err : count;
}
