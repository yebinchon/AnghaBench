
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct picolcd_data {int status; int lock; int hdev; } ;
struct hid_report {int maxfield; int * field; } ;


 int ENODEV ;
 int HID_REQ_SET_REPORT ;
 int PICOLCD_FAILED ;
 int REPORT_LCD_CMD_DATA ;
 int REPORT_LCD_DATA ;
 int hid_hw_request (int ,struct hid_report*,int ) ;
 int hid_set_field (int ,int,int) ;
 struct hid_report* picolcd_out_report (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int picolcd_fb_send_tile(struct picolcd_data *data, u8 *vbitmap,
  int chip, int tile)
{
 struct hid_report *report1, *report2;
 unsigned long flags;
 u8 *tdata;
 int i;

 report1 = picolcd_out_report(REPORT_LCD_CMD_DATA, data->hdev);
 if (!report1 || report1->maxfield != 1)
  return -ENODEV;
 report2 = picolcd_out_report(REPORT_LCD_DATA, data->hdev);
 if (!report2 || report2->maxfield != 1)
  return -ENODEV;

 spin_lock_irqsave(&data->lock, flags);
 if ((data->status & PICOLCD_FAILED)) {
  spin_unlock_irqrestore(&data->lock, flags);
  return -ENODEV;
 }
 hid_set_field(report1->field[0], 0, chip << 2);
 hid_set_field(report1->field[0], 1, 0x02);
 hid_set_field(report1->field[0], 2, 0x00);
 hid_set_field(report1->field[0], 3, 0x00);
 hid_set_field(report1->field[0], 4, 0xb8 | tile);
 hid_set_field(report1->field[0], 5, 0x00);
 hid_set_field(report1->field[0], 6, 0x00);
 hid_set_field(report1->field[0], 7, 0x40);
 hid_set_field(report1->field[0], 8, 0x00);
 hid_set_field(report1->field[0], 9, 0x00);
 hid_set_field(report1->field[0], 10, 32);

 hid_set_field(report2->field[0], 0, (chip << 2) | 0x01);
 hid_set_field(report2->field[0], 1, 0x00);
 hid_set_field(report2->field[0], 2, 0x00);
 hid_set_field(report2->field[0], 3, 32);

 tdata = vbitmap + (tile * 4 + chip) * 64;
 for (i = 0; i < 64; i++)
  if (i < 32)
   hid_set_field(report1->field[0], 11 + i, tdata[i]);
  else
   hid_set_field(report2->field[0], 4 + i - 32, tdata[i]);

 hid_hw_request(data->hdev, report1, HID_REQ_SET_REPORT);
 hid_hw_request(data->hdev, report2, HID_REQ_SET_REPORT);
 spin_unlock_irqrestore(&data->lock, flags);
 return 0;
}
