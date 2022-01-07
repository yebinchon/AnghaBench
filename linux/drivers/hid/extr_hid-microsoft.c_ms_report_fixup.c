
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_data {unsigned long quirks; } ;
struct hid_device {int dummy; } ;
typedef int __u8 ;


 unsigned long MS_RDESC ;
 struct ms_data* hid_get_drvdata (struct hid_device*) ;
 int hid_info (struct hid_device*,char*) ;

__attribute__((used)) static __u8 *ms_report_fixup(struct hid_device *hdev, __u8 *rdesc,
  unsigned int *rsize)
{
 struct ms_data *ms = hid_get_drvdata(hdev);
 unsigned long quirks = ms->quirks;





 if ((quirks & MS_RDESC) && *rsize == 571 && rdesc[557] == 0x19 &&
   rdesc[559] == 0x29) {
  hid_info(hdev, "fixing up Microsoft Wireless Receiver Model 1028 report descriptor\n");
  rdesc[557] = 0x35;
  rdesc[559] = 0x45;
 }
 return rdesc;
}
