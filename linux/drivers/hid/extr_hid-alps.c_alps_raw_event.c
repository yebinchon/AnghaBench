
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int product; } ;
struct alps_dev {int dummy; } ;



 struct alps_dev* hid_get_drvdata (struct hid_device*) ;
 int t4_raw_event (struct alps_dev*,int *,int) ;
 int u1_raw_event (struct alps_dev*,int *,int) ;

__attribute__((used)) static int alps_raw_event(struct hid_device *hdev,
  struct hid_report *report, u8 *data, int size)
{
 int ret = 0;
 struct alps_dev *hdata = hid_get_drvdata(hdev);

 switch (hdev->product) {
 case 128:
  ret = t4_raw_event(hdata, data, size);
  break;
 default:
  ret = u1_raw_event(hdata, data, size);
  break;
 }
 return ret;
}
