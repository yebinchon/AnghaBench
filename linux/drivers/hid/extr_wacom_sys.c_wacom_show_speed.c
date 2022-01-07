
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bt_high_speed; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t wacom_show_speed(struct device *dev,
    struct device_attribute
    *attr, char *buf)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct wacom *wacom = hid_get_drvdata(hdev);

 return snprintf(buf, PAGE_SIZE, "%i\n", wacom->wacom_wac.bt_high_speed);
}
