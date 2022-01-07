
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_usb {scalar_t__ linkstat; int dev; int palmas; struct extcon_dev* edev; } ;
struct extcon_dev {int dummy; } ;
typedef int irqreturn_t ;


 int EXTCON_USB_HOST ;
 int IRQ_HANDLED ;
 int PALMAS_USB_ID_INT_EN_HI_CLR_ID_FLOAT ;
 int PALMAS_USB_ID_INT_EN_HI_CLR_ID_GND ;
 int PALMAS_USB_ID_INT_LATCH_CLR ;
 int PALMAS_USB_ID_INT_LATCH_SET ;
 int PALMAS_USB_ID_INT_SRC ;
 unsigned int PALMAS_USB_ID_INT_SRC_ID_FLOAT ;
 unsigned int PALMAS_USB_ID_INT_SRC_ID_GND ;
 int PALMAS_USB_OTG_BASE ;
 scalar_t__ PALMAS_USB_STATE_DISCONNECT ;
 scalar_t__ PALMAS_USB_STATE_ID ;
 int dev_dbg (int ,char*) ;
 int extcon_set_state_sync (struct extcon_dev*,int ,int) ;
 int palmas_read (int ,int ,int ,unsigned int*) ;
 int palmas_write (int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t palmas_id_irq_handler(int irq, void *_palmas_usb)
{
 unsigned int set, id_src;
 struct palmas_usb *palmas_usb = _palmas_usb;
 struct extcon_dev *edev = palmas_usb->edev;

 palmas_read(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
  PALMAS_USB_ID_INT_LATCH_SET, &set);
 palmas_read(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
  PALMAS_USB_ID_INT_SRC, &id_src);

 if ((set & PALMAS_USB_ID_INT_SRC_ID_GND) &&
    (id_src & PALMAS_USB_ID_INT_SRC_ID_GND)) {
  palmas_write(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
   PALMAS_USB_ID_INT_LATCH_CLR,
   PALMAS_USB_ID_INT_EN_HI_CLR_ID_GND);
  palmas_usb->linkstat = PALMAS_USB_STATE_ID;
  extcon_set_state_sync(edev, EXTCON_USB_HOST, 1);
  dev_dbg(palmas_usb->dev, "USB-HOST cable is attached\n");
 } else if ((set & PALMAS_USB_ID_INT_SRC_ID_FLOAT) &&
    (id_src & PALMAS_USB_ID_INT_SRC_ID_FLOAT)) {
  palmas_write(palmas_usb->palmas, PALMAS_USB_OTG_BASE,
   PALMAS_USB_ID_INT_LATCH_CLR,
   PALMAS_USB_ID_INT_EN_HI_CLR_ID_FLOAT);
  palmas_usb->linkstat = PALMAS_USB_STATE_DISCONNECT;
  extcon_set_state_sync(edev, EXTCON_USB_HOST, 0);
  dev_dbg(palmas_usb->dev, "USB-HOST cable is detached\n");
 } else if ((palmas_usb->linkstat == PALMAS_USB_STATE_ID) &&
    (!(set & PALMAS_USB_ID_INT_SRC_ID_GND))) {
  palmas_usb->linkstat = PALMAS_USB_STATE_DISCONNECT;
  extcon_set_state_sync(edev, EXTCON_USB_HOST, 0);
  dev_dbg(palmas_usb->dev, "USB-HOST cable is detached\n");
 } else if ((palmas_usb->linkstat == PALMAS_USB_STATE_DISCONNECT) &&
    (id_src & PALMAS_USB_ID_INT_SRC_ID_GND)) {
  palmas_usb->linkstat = PALMAS_USB_STATE_ID;
  extcon_set_state_sync(edev, EXTCON_USB_HOST, 1);
  dev_dbg(palmas_usb->dev, " USB-HOST cable is attached\n");
 }

 return IRQ_HANDLED;
}
