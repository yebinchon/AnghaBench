
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
struct gt683r_led {scalar_t__ mode; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 scalar_t__ GT683R_LED_AUDIO ;
 scalar_t__ GT683R_LED_NORMAL ;
 int PAGE_SIZE ;
 struct gt683r_led* hid_get_drvdata (struct hid_device*) ;
 int scnprintf (char*,int ,char*,int) ;
 struct hid_device* to_hid_device (int ) ;

__attribute__((used)) static ssize_t mode_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 u8 sysfs_mode;
 struct hid_device *hdev = to_hid_device(dev->parent);
 struct gt683r_led *led = hid_get_drvdata(hdev);

 if (led->mode == GT683R_LED_NORMAL)
  sysfs_mode = 0;
 else if (led->mode == GT683R_LED_AUDIO)
  sysfs_mode = 1;
 else
  sysfs_mode = 2;

 return scnprintf(buf, PAGE_SIZE, "%u\n", sysfs_mode);
}
