
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union sixaxis_output_report_01 {int buf; } ;
typedef int u8 ;
struct sony_sc {int* led_state; int quirks; int hdev; scalar_t__* led_delay_on; scalar_t__* led_delay_off; int left; scalar_t__ right; scalar_t__ output_report_dmabuf; } ;
struct TYPE_3__ {int right_motor_on; int left_motor_force; } ;
struct sixaxis_output_report {int leds_bitmap; int report_id; TYPE_2__* led; TYPE_1__ rumble; } ;
struct TYPE_4__ {scalar_t__ duty_on; scalar_t__ duty_off; } ;


 int HID_OUTPUT_REPORT ;
 int HID_REQ_SET_REPORT ;
 int SHANWAN_GAMEPAD ;
 int hid_hw_output_report (int ,int *,int) ;
 int hid_hw_raw_request (int ,int ,int *,int,int ,int ) ;
 int memcpy (struct sixaxis_output_report*,union sixaxis_output_report_01 const*,int) ;

__attribute__((used)) static void sixaxis_send_output_report(struct sony_sc *sc)
{
 static const union sixaxis_output_report_01 default_report = {
  .buf = {
   0x01,
   0x01, 0xff, 0x00, 0xff, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00,
   0xff, 0x27, 0x10, 0x00, 0x32,
   0xff, 0x27, 0x10, 0x00, 0x32,
   0xff, 0x27, 0x10, 0x00, 0x32,
   0xff, 0x27, 0x10, 0x00, 0x32,
   0x00, 0x00, 0x00, 0x00, 0x00
  }
 };
 struct sixaxis_output_report *report =
  (struct sixaxis_output_report *)sc->output_report_dmabuf;
 int n;


 memcpy(report, &default_report, sizeof(struct sixaxis_output_report));






 report->leds_bitmap |= sc->led_state[0] << 1;
 report->leds_bitmap |= sc->led_state[1] << 2;
 report->leds_bitmap |= sc->led_state[2] << 3;
 report->leds_bitmap |= sc->led_state[3] << 4;


 if ((report->leds_bitmap & 0x1E) == 0)
  report->leds_bitmap |= 0x20;
 for (n = 0; n < 4; n++) {
  if (sc->led_delay_on[n] || sc->led_delay_off[n]) {
   report->led[3 - n].duty_off = sc->led_delay_off[n];
   report->led[3 - n].duty_on = sc->led_delay_on[n];
  }
 }


 if (sc->quirks & SHANWAN_GAMEPAD)
  hid_hw_output_report(sc->hdev, (u8 *)report,
    sizeof(struct sixaxis_output_report));
 else
  hid_hw_raw_request(sc->hdev, report->report_id, (u8 *)report,
    sizeof(struct sixaxis_output_report),
    HID_OUTPUT_REPORT, HID_REQ_SET_REPORT);
}
