
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int ds4_bt_poll_interval; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct sony_sc* hid_get_drvdata (struct hid_device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t ds4_show_poll_interval(struct device *dev,
    struct device_attribute
    *attr, char *buf)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct sony_sc *sc = hid_get_drvdata(hdev);

 return snprintf(buf, PAGE_SIZE, "%i\n", sc->ds4_bt_poll_interval);
}
