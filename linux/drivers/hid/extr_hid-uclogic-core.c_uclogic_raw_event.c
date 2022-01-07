
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int id; int dev_id_byte; int re_lsb; } ;
struct TYPE_3__ {int id; scalar_t__ inrange; scalar_t__ fragmented_hires; } ;
struct uclogic_params {int pen_frame_flag; TYPE_2__ frame; TYPE_1__ pen; int pen_unused; } ;
struct uclogic_drvdata {int re_state; int inrange_timer; struct uclogic_params params; } ;
struct hid_report {scalar_t__ type; int id; } ;
struct hid_device {int dummy; } ;


 scalar_t__ HID_INPUT_REPORT ;
 scalar_t__ UCLOGIC_PARAMS_PEN_INRANGE_INVERTED ;
 scalar_t__ UCLOGIC_PARAMS_PEN_INRANGE_NONE ;
 struct uclogic_drvdata* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static int uclogic_raw_event(struct hid_device *hdev,
    struct hid_report *report,
    u8 *data, int size)
{
 struct uclogic_drvdata *drvdata = hid_get_drvdata(hdev);
 struct uclogic_params *params = &drvdata->params;


 if (!params->pen_unused &&
     (report->type == HID_INPUT_REPORT) &&
     (report->id == params->pen.id) &&
     (size >= 2)) {

  if (params->frame.id != 0 &&
      data[1] & params->pen_frame_flag) {

   data[0] = params->frame.id;
   return 0;
  }

  if (params->pen.inrange ==
   UCLOGIC_PARAMS_PEN_INRANGE_INVERTED) {

   data[1] ^= 0x40;
  }




  if (size >= 10 && params->pen.fragmented_hires) {
   u8 pressure_low_byte;
   u8 pressure_high_byte;


   pressure_low_byte = data[6];
   pressure_high_byte = data[7];




   data[6] = data[5];
   data[5] = data[4];

   data[4] = data[8];

   data[7] = data[9];

   data[8] = pressure_low_byte;
   data[9] = pressure_high_byte;
  }

  if (params->pen.inrange == UCLOGIC_PARAMS_PEN_INRANGE_NONE) {

   data[1] |= 0x40;

   mod_timer(&drvdata->inrange_timer,
     jiffies + msecs_to_jiffies(100));
  }
 }


 if ((report->type == HID_INPUT_REPORT) &&
     (report->id == params->frame.id)) {

  if (params->frame.dev_id_byte > 0 &&
      params->frame.dev_id_byte < size) {
   data[params->frame.dev_id_byte] = 0xf;
  }

  if (params->frame.re_lsb > 0 &&
      params->frame.re_lsb / 8 < size) {
   unsigned int byte = params->frame.re_lsb / 8;
   unsigned int bit = params->frame.re_lsb % 8;

   u8 change;
   u8 prev_state = drvdata->re_state;

   u8 state = (data[byte] >> bit) & 0x3;

   if ((prev_state == 1 && state == 0) ||
       (prev_state == 2 && state == 3)) {
    change = 1;
   } else if ((prev_state == 2 && state == 0) ||
       (prev_state == 1 && state == 3)) {
    change = 3;
   } else {
    change = 0;
   }

   data[byte] = (data[byte] & ~((u8)3 << bit)) |
     (change << bit);

   drvdata->re_state = state;
  }
 }

 return 0;
}
