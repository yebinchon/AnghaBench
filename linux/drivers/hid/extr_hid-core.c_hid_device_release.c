
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {struct hid_device* dev_rdesc; } ;
struct device {int dummy; } ;


 int hid_close_report (struct hid_device*) ;
 int kfree (struct hid_device*) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static void hid_device_release(struct device *dev)
{
 struct hid_device *hid = to_hid_device(dev);

 hid_close_report(hid);
 kfree(hid->dev_rdesc);
 kfree(hid);
}
