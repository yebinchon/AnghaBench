
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct picolcd_fb_data {int bpp; int force; int ready; int bitmap; int vbitmap; } ;
struct picolcd_data {TYPE_1__* fb_info; int lock; int hdev; } ;
struct hid_report {int maxfield; TYPE_2__** field; } ;
typedef int mapcmd ;
struct TYPE_4__ {int maxusage; } ;
struct TYPE_3__ {int deferred_work; struct picolcd_fb_data* par; } ;


 int ENODEV ;
 int HID_REQ_SET_REPORT ;
 int PICOLCDFB_SIZE ;
 int REPORT_LCD_CMD ;
 int hid_hw_request (int ,struct hid_report*,int ) ;
 int hid_set_field (TYPE_2__*,int,int const) ;
 int memset (int ,int ,int) ;
 struct hid_report* picolcd_out_report (int ,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int picolcd_fb_reset(struct picolcd_data *data, int clear)
{
 struct hid_report *report = picolcd_out_report(REPORT_LCD_CMD, data->hdev);
 struct picolcd_fb_data *fbdata = data->fb_info->par;
 int i, j;
 unsigned long flags;
 static const u8 mapcmd[8] = { 0x00, 0x02, 0x00, 0x64, 0x3f, 0x00, 0x64, 0xc0 };

 if (!report || report->maxfield != 1)
  return -ENODEV;

 spin_lock_irqsave(&data->lock, flags);
 for (i = 0; i < 4; i++) {
  for (j = 0; j < report->field[0]->maxusage; j++)
   if (j == 0)
    hid_set_field(report->field[0], j, i << 2);
   else if (j < sizeof(mapcmd))
    hid_set_field(report->field[0], j, mapcmd[j]);
   else
    hid_set_field(report->field[0], j, 0);
  hid_hw_request(data->hdev, report, HID_REQ_SET_REPORT);
 }
 spin_unlock_irqrestore(&data->lock, flags);

 if (clear) {
  memset(fbdata->vbitmap, 0, PICOLCDFB_SIZE);
  memset(fbdata->bitmap, 0, PICOLCDFB_SIZE*fbdata->bpp);
 }
 fbdata->force = 1;


 if (fbdata->ready)
  schedule_delayed_work(&data->fb_info->deferred_work, 0);
 else
  fbdata->ready = 1;

 return 0;
}
