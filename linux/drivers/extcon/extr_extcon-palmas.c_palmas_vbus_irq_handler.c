
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_usb {scalar_t__ linkstat; int dev; int palmas; struct extcon_dev* edev; } ;
struct extcon_dev {int dummy; } ;
typedef int irqreturn_t ;


 int EXTCON_USB ;
 int IRQ_HANDLED ;
 int PALMAS_INT3_LINE_STATE ;
 unsigned int PALMAS_INT3_LINE_STATE_VBUS ;
 int PALMAS_INTERRUPT_BASE ;
 scalar_t__ PALMAS_USB_STATE_DISCONNECT ;
 scalar_t__ PALMAS_USB_STATE_VBUS ;
 int dev_dbg (int ,char*) ;
 int extcon_set_state_sync (struct extcon_dev*,int ,int) ;
 int palmas_read (int ,int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t palmas_vbus_irq_handler(int irq, void *_palmas_usb)
{
 struct palmas_usb *palmas_usb = _palmas_usb;
 struct extcon_dev *edev = palmas_usb->edev;
 unsigned int vbus_line_state;

 palmas_read(palmas_usb->palmas, PALMAS_INTERRUPT_BASE,
  PALMAS_INT3_LINE_STATE, &vbus_line_state);

 if (vbus_line_state & PALMAS_INT3_LINE_STATE_VBUS) {
  if (palmas_usb->linkstat != PALMAS_USB_STATE_VBUS) {
   palmas_usb->linkstat = PALMAS_USB_STATE_VBUS;
   extcon_set_state_sync(edev, EXTCON_USB, 1);
   dev_dbg(palmas_usb->dev, "USB cable is attached\n");
  } else {
   dev_dbg(palmas_usb->dev,
    "Spurious connect event detected\n");
  }
 } else if (!(vbus_line_state & PALMAS_INT3_LINE_STATE_VBUS)) {
  if (palmas_usb->linkstat == PALMAS_USB_STATE_VBUS) {
   palmas_usb->linkstat = PALMAS_USB_STATE_DISCONNECT;
   extcon_set_state_sync(edev, EXTCON_USB, 0);
   dev_dbg(palmas_usb->dev, "USB cable is detached\n");
  } else {
   dev_dbg(palmas_usb->dev,
    "Spurious disconnect event detected\n");
  }
 }

 return IRQ_HANDLED;
}
