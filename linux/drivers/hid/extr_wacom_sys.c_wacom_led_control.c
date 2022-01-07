
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned char llv; unsigned char hlv; unsigned char img_lum; TYPE_3__* groups; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ features; scalar_t__ pid; } ;
struct wacom {int hdev; TYPE_4__ led; TYPE_2__ wacom_wac; } ;
struct TYPE_7__ {int select; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 scalar_t__ HID_GENERIC ;
 scalar_t__ INTUOS5S ;
 scalar_t__ INTUOSP2_BT ;
 scalar_t__ INTUOSPL ;
 scalar_t__ REMOTE ;
 scalar_t__ WACOM_21UX2 ;
 scalar_t__ WACOM_24HD ;
 unsigned char WAC_CMD_LED_CONTROL ;
 unsigned char WAC_CMD_LED_CONTROL_GENERIC ;
 int WAC_CMD_RETRIES ;
 unsigned char WAC_CMD_WL_INTUOSP2 ;
 unsigned char WAC_CMD_WL_LED_CONTROL ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int wacom_get_report (int ,int ,unsigned char*,int,int ) ;
 int wacom_set_report (int ,int ,unsigned char*,int,int ) ;

__attribute__((used)) static int wacom_led_control(struct wacom *wacom)
{
 unsigned char *buf;
 int retval;
 unsigned char report_id = WAC_CMD_LED_CONTROL;
 int buf_size = 9;

 if (!wacom->led.groups)
  return -ENOTSUPP;

 if (wacom->wacom_wac.features.type == REMOTE)
  return -ENOTSUPP;

 if (wacom->wacom_wac.pid) {
  report_id = WAC_CMD_WL_LED_CONTROL;
  buf_size = 13;
 }
 else if (wacom->wacom_wac.features.type == INTUOSP2_BT) {
  report_id = WAC_CMD_WL_INTUOSP2;
  buf_size = 51;
 }
 buf = kzalloc(buf_size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 if (wacom->wacom_wac.features.type == HID_GENERIC) {
  buf[0] = WAC_CMD_LED_CONTROL_GENERIC;
  buf[1] = wacom->led.llv;
  buf[2] = wacom->led.groups[0].select & 0x03;

 } else if ((wacom->wacom_wac.features.type >= INTUOS5S &&
     wacom->wacom_wac.features.type <= INTUOSPL)) {





  int ring_led = wacom->led.groups[0].select & 0x03;
  int ring_lum = (((wacom->led.llv & 0x60) >> 5) - 1) & 0x03;
  int crop_lum = 0;
  unsigned char led_bits = (crop_lum << 4) | (ring_lum << 2) | (ring_led);

  buf[0] = report_id;
  if (wacom->wacom_wac.pid) {
   wacom_get_report(wacom->hdev, HID_FEATURE_REPORT,
      buf, buf_size, WAC_CMD_RETRIES);
   buf[0] = report_id;
   buf[4] = led_bits;
  } else
   buf[1] = led_bits;
 }
 else if (wacom->wacom_wac.features.type == INTUOSP2_BT) {
  buf[0] = report_id;
  buf[4] = 100;
  buf[5] = 100;
  buf[6] = 100;
  buf[7] = 100;
  buf[8] = 100;
  buf[9] = wacom->led.llv;
  buf[10] = wacom->led.groups[0].select & 0x03;
 }
 else {
  int led = wacom->led.groups[0].select | 0x4;

  if (wacom->wacom_wac.features.type == WACOM_21UX2 ||
      wacom->wacom_wac.features.type == WACOM_24HD)
   led |= (wacom->led.groups[1].select << 4) | 0x40;

  buf[0] = report_id;
  buf[1] = led;
  buf[2] = wacom->led.llv;
  buf[3] = wacom->led.hlv;
  buf[4] = wacom->led.img_lum;
 }

 retval = wacom_set_report(wacom->hdev, HID_FEATURE_REPORT, buf, buf_size,
      WAC_CMD_RETRIES);
 kfree(buf);

 return retval;
}
