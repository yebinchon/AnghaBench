
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int template ;
struct dj_receiver_dev {int hidpp; } ;


 int ENOMEM ;
 int GFP_KERNEL ;




 int HID_OUTPUT_REPORT ;
 int HID_REQ_SET_REPORT ;

 int hid_hw_raw_request (int ,int const,int*,int,int ,int ) ;
 int kfree (int*) ;
 int* kmemdup (int const*,int,int ) ;

__attribute__((used)) static int logi_dj_recv_query_hidpp_devices(struct dj_receiver_dev *djrcv_dev)
{
 static const u8 template[] = {
  128,
  131,
  129,
  130,
  132,
  0x00, 0x00
 };
 u8 *hidpp_report;
 int retval;

 hidpp_report = kmemdup(template, sizeof(template), GFP_KERNEL);
 if (!hidpp_report)
  return -ENOMEM;

 retval = hid_hw_raw_request(djrcv_dev->hidpp,
        128,
        hidpp_report, sizeof(template),
        HID_OUTPUT_REPORT,
        HID_REQ_SET_REPORT);

 kfree(hidpp_report);
 return (retval < 0) ? retval : 0;
}
