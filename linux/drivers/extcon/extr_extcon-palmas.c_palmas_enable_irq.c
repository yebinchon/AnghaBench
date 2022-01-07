
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_usb {int id_irq; scalar_t__ enable_id_detection; int vbus_irq; scalar_t__ enable_vbus_detection; int palmas; } ;


 int PALMAS_USB_ID_CTRL_SET ;
 int PALMAS_USB_ID_CTRL_SET_ID_ACT_COMP ;
 int PALMAS_USB_ID_INT_EN_HI_SET ;
 int PALMAS_USB_ID_INT_EN_HI_SET_ID_FLOAT ;
 int PALMAS_USB_ID_INT_EN_HI_SET_ID_GND ;
 int PALMAS_USB_OTG_BASE ;
 int PALMAS_USB_VBUS_CTRL_SET ;
 int PALMAS_USB_VBUS_CTRL_SET_VBUS_ACT_COMP ;
 int msleep (int) ;
 int palmas_id_irq_handler (int ,struct palmas_usb*) ;
 int palmas_vbus_irq_handler (int ,struct palmas_usb*) ;
 int palmas_write (int ,int ,int ,int) ;

__attribute__((used)) static void palmas_enable_irq(struct palmas_usb *palmas_usb)
{
 palmas_write(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
  PALMAS_USB_VBUS_CTRL_SET,
  PALMAS_USB_VBUS_CTRL_SET_VBUS_ACT_COMP);

 if (palmas_usb->enable_id_detection) {
  palmas_write(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
        PALMAS_USB_ID_CTRL_SET,
        PALMAS_USB_ID_CTRL_SET_ID_ACT_COMP);

  palmas_write(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
        PALMAS_USB_ID_INT_EN_HI_SET,
        PALMAS_USB_ID_INT_EN_HI_SET_ID_GND |
        PALMAS_USB_ID_INT_EN_HI_SET_ID_FLOAT);
 }

 if (palmas_usb->enable_vbus_detection)
  palmas_vbus_irq_handler(palmas_usb->vbus_irq, palmas_usb);


 if (palmas_usb->enable_id_detection) {
  msleep(30);
  palmas_id_irq_handler(palmas_usb->id_irq, palmas_usb);
 }
}
