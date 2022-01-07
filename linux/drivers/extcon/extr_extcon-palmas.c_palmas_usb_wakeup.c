
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas {int dummy; } ;


 int PALMAS_USB_OTG_BASE ;
 int PALMAS_USB_WAKEUP ;
 int PALMAS_USB_WAKEUP_ID_WK_UP_COMP ;
 int palmas_write (struct palmas*,int ,int ,int ) ;

__attribute__((used)) static void palmas_usb_wakeup(struct palmas *palmas, int enable)
{
 if (enable)
  palmas_write(palmas, PALMAS_USB_OTG_BASE, PALMAS_USB_WAKEUP,
   PALMAS_USB_WAKEUP_ID_WK_UP_COMP);
 else
  palmas_write(palmas, PALMAS_USB_OTG_BASE, PALMAS_USB_WAKEUP, 0);
}
