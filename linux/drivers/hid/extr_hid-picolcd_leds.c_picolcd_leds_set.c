
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct picolcd_data {int status; int lock; int hdev; int led_state; int * led; } ;
struct hid_report {int maxfield; TYPE_1__** field; } ;
struct TYPE_2__ {int report_count; } ;


 int HID_REQ_SET_REPORT ;
 int PICOLCD_FAILED ;
 int REPORT_LED_STATE ;
 int hid_hw_request (int ,struct hid_report*,int ) ;
 int hid_set_field (TYPE_1__*,int ,int ) ;
 struct hid_report* picolcd_out_report (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void picolcd_leds_set(struct picolcd_data *data)
{
 struct hid_report *report;
 unsigned long flags;

 if (!data->led[0])
  return;
 report = picolcd_out_report(REPORT_LED_STATE, data->hdev);
 if (!report || report->maxfield != 1 || report->field[0]->report_count != 1)
  return;

 spin_lock_irqsave(&data->lock, flags);
 hid_set_field(report->field[0], 0, data->led_state);
 if (!(data->status & PICOLCD_FAILED))
  hid_hw_request(data->hdev, report, HID_REQ_SET_REPORT);
 spin_unlock_irqrestore(&data->lock, flags);
}
