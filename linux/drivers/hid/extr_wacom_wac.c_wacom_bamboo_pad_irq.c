
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {unsigned char* data; } ;


 size_t WACOM_PKGLEN_BPAD_TOUCH ;
 size_t WACOM_PKGLEN_BPAD_TOUCH_USB ;
 unsigned char WACOM_REPORT_BPAD_TOUCH ;
 int wacom_bamboo_pad_pen_event (struct wacom_wac*,unsigned char*) ;
 int wacom_bamboo_pad_touch_event (struct wacom_wac*,unsigned char*) ;

__attribute__((used)) static int wacom_bamboo_pad_irq(struct wacom_wac *wacom, size_t len)
{
 unsigned char *data = wacom->data;

 if (!((len == WACOM_PKGLEN_BPAD_TOUCH) ||
       (len == WACOM_PKGLEN_BPAD_TOUCH_USB)) ||
     (data[0] != WACOM_REPORT_BPAD_TOUCH))
  return 0;

 if (data[1] & 0x01)
  wacom_bamboo_pad_pen_event(wacom, &data[1]);

 if (data[1] & 0x02)
  return wacom_bamboo_pad_touch_event(wacom, &data[9]);

 return 0;
}
