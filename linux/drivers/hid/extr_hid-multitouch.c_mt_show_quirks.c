
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quirks; } ;
struct mt_device {TYPE_1__ mtclass; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct mt_device* hid_get_drvdata (struct hid_device*) ;
 int sprintf (char*,char*,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t mt_show_quirks(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct mt_device *td = hid_get_drvdata(hdev);

 return sprintf(buf, "%u\n", td->mtclass.quirks);
}
