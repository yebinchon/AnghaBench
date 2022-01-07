
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int product; } ;





 int hid_hw_stop (struct hid_device*) ;
 int lenovo_remove_cptkbd (struct hid_device*) ;
 int lenovo_remove_tpkbd (struct hid_device*) ;

__attribute__((used)) static void lenovo_remove(struct hid_device *hdev)
{
 switch (hdev->product) {
 case 128:
  lenovo_remove_tpkbd(hdev);
  break;
 case 129:
 case 130:
  lenovo_remove_cptkbd(hdev);
  break;
 }

 hid_hw_stop(hdev);
}
