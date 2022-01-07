
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vprbrd_gpiob_msg {int val; } ;
struct vprbrd_gpio {int gpiob_out; int gpiob_val; struct vprbrd* vb; } ;
struct vprbrd {int lock; int usb_dev; scalar_t__ buf; } ;
struct gpio_chip {int dummy; } ;


 int VPRBRD_USB_REQUEST_GPIOB ;
 int VPRBRD_USB_TIMEOUT_MS ;
 int VPRBRD_USB_TYPE_IN ;
 int be16_to_cpu (int ) ;
 struct vprbrd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,struct vprbrd_gpiob_msg*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int vprbrd_gpiob_get(struct gpio_chip *chip,
  unsigned int offset)
{
 int ret;
 u16 val;
 struct vprbrd_gpio *gpio = gpiochip_get_data(chip);
 struct vprbrd *vb = gpio->vb;
 struct vprbrd_gpiob_msg *gbmsg = (struct vprbrd_gpiob_msg *)vb->buf;


 if (gpio->gpiob_out & (1 << offset))
  return gpio->gpiob_val & (1 << offset);

 mutex_lock(&vb->lock);

 ret = usb_control_msg(vb->usb_dev, usb_rcvctrlpipe(vb->usb_dev, 0),
  VPRBRD_USB_REQUEST_GPIOB, VPRBRD_USB_TYPE_IN, 0x0000,
  0x0000, gbmsg, sizeof(struct vprbrd_gpiob_msg),
  VPRBRD_USB_TIMEOUT_MS);
 val = gbmsg->val;

 mutex_unlock(&vb->lock);

 if (ret != sizeof(struct vprbrd_gpiob_msg))
  return ret;


 gpio->gpiob_val = be16_to_cpu(val);

 return (gpio->gpiob_val >> offset) & 0x1;
}
