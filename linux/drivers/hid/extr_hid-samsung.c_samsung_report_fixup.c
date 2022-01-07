
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {scalar_t__ product; } ;
typedef int __u8 ;


 scalar_t__ USB_DEVICE_ID_SAMSUNG_IR_REMOTE ;
 int * samsung_irda_report_fixup (struct hid_device*,int *,unsigned int*) ;

__attribute__((used)) static __u8 *samsung_report_fixup(struct hid_device *hdev, __u8 *rdesc,
 unsigned int *rsize)
{
 if (USB_DEVICE_ID_SAMSUNG_IR_REMOTE == hdev->product)
  rdesc = samsung_irda_report_fixup(hdev, rdesc, rsize);
 return rdesc;
}
