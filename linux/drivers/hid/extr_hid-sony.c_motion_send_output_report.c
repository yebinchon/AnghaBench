
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sony_sc {int left; int right; int * led_state; scalar_t__ output_report_dmabuf; struct hid_device* hdev; } ;
struct motion_output_report_02 {int type; int rumble; int b; int g; int r; } ;
struct hid_device {int dummy; } ;


 int MOTION_REPORT_0x02_SIZE ;
 int hid_hw_output_report (struct hid_device*,int *,int ) ;
 int max (int ,int ) ;
 int memset (struct motion_output_report_02*,int ,int ) ;

__attribute__((used)) static void motion_send_output_report(struct sony_sc *sc)
{
 struct hid_device *hdev = sc->hdev;
 struct motion_output_report_02 *report =
  (struct motion_output_report_02 *)sc->output_report_dmabuf;

 memset(report, 0, MOTION_REPORT_0x02_SIZE);

 report->type = 0x02;
 report->r = sc->led_state[0];
 report->g = sc->led_state[1];
 report->b = sc->led_state[2];





 hid_hw_output_report(hdev, (u8 *)report, MOTION_REPORT_0x02_SIZE);
}
