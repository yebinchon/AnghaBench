
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {TYPE_1__* shared; } ;
struct TYPE_2__ {int pen; } ;


 int HID_INPUT_REPORT ;
 int WACOM_PKGLEN_PENABLED ;
 unsigned char WACOM_REPORT_BPAD_PEN ;
 int hid_input_report (int ,int ,unsigned char*,int ,int) ;

__attribute__((used)) static void wacom_bamboo_pad_pen_event(struct wacom_wac *wacom,
  unsigned char *data)
{
 unsigned char prefix;
 prefix = data[0];
 data[0] = WACOM_REPORT_BPAD_PEN;






 hid_input_report(wacom->shared->pen, HID_INPUT_REPORT, data,
    WACOM_PKGLEN_PENABLED, 1);

 data[0] = prefix;
}
