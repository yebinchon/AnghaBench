
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dev; } ;
typedef int __u8 ;


 int dev_info (int *,char*) ;

__attribute__((used)) static __u8 *redragon_report_fixup(struct hid_device *hdev, __u8 *rdesc,
 unsigned int *rsize)
{
 if (*rsize >= 102 && rdesc[100] == 0x81 && rdesc[101] == 0x00) {
  dev_info(&hdev->dev, "Fixing Redragon ASURA report descriptor.\n");
  rdesc[101] = 0x02;
 }

 return rdesc;
}
