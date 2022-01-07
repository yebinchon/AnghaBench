
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dj_device {int hdev; } ;


 int HID_INPUT_REPORT ;
 int dbg_hid (char*) ;
 scalar_t__ hid_input_report (int ,int ,int *,int,int) ;

__attribute__((used)) static void logi_dj_recv_forward_report(struct dj_device *dj_dev, u8 *data,
     int size)
{

 if (hid_input_report(dj_dev->hdev, HID_INPUT_REPORT, data, size, 1))
  dbg_hid("hid_input_report error\n");
}
