
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int features; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ kstrtou8 (char const*,int ,int*) ;
 struct hid_device* to_hid_device (struct device*) ;
 int wacom_bt_query_tablet_data (struct hid_device*,int,int *) ;

__attribute__((used)) static ssize_t wacom_store_speed(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct wacom *wacom = hid_get_drvdata(hdev);
 u8 new_speed;

 if (kstrtou8(buf, 0, &new_speed))
  return -EINVAL;

 if (new_speed != 0 && new_speed != 1)
  return -EINVAL;

 wacom_bt_query_tablet_data(hdev, new_speed, &wacom->wacom_wac.features);

 return count;
}
