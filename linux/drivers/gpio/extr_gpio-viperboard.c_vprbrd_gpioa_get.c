
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vprbrd_gpioa_msg {int clk; unsigned int offset; int t1; int t2; int invert; int pwmlevel; int outval; int risefall; int answer; int __fill; int cmd; } ;
struct vprbrd_gpio {int gpioa_out; int gpioa_val; struct vprbrd* vb; } ;
struct vprbrd {int lock; int usb_dev; scalar_t__ buf; } ;
struct gpio_chip {int dummy; } ;


 int EREMOTEIO ;
 int VPRBRD_GPIOA_CMD_GETIN ;
 int VPRBRD_USB_REQUEST_GPIOA ;
 int VPRBRD_USB_TIMEOUT_MS ;
 int VPRBRD_USB_TYPE_IN ;
 int VPRBRD_USB_TYPE_OUT ;
 struct vprbrd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,struct vprbrd_gpioa_msg*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int vprbrd_gpioa_get(struct gpio_chip *chip,
  unsigned int offset)
{
 int ret, answer, error = 0;
 struct vprbrd_gpio *gpio = gpiochip_get_data(chip);
 struct vprbrd *vb = gpio->vb;
 struct vprbrd_gpioa_msg *gamsg = (struct vprbrd_gpioa_msg *)vb->buf;


 if (gpio->gpioa_out & (1 << offset))
  return !!(gpio->gpioa_val & (1 << offset));

 mutex_lock(&vb->lock);

 gamsg->cmd = VPRBRD_GPIOA_CMD_GETIN;
 gamsg->clk = 0x00;
 gamsg->offset = offset;
 gamsg->t1 = 0x00;
 gamsg->t2 = 0x00;
 gamsg->invert = 0x00;
 gamsg->pwmlevel = 0x00;
 gamsg->outval = 0x00;
 gamsg->risefall = 0x00;
 gamsg->answer = 0x00;
 gamsg->__fill = 0x00;

 ret = usb_control_msg(vb->usb_dev, usb_sndctrlpipe(vb->usb_dev, 0),
  VPRBRD_USB_REQUEST_GPIOA, VPRBRD_USB_TYPE_OUT, 0x0000,
  0x0000, gamsg, sizeof(struct vprbrd_gpioa_msg),
  VPRBRD_USB_TIMEOUT_MS);
 if (ret != sizeof(struct vprbrd_gpioa_msg))
  error = -EREMOTEIO;

 ret = usb_control_msg(vb->usb_dev, usb_rcvctrlpipe(vb->usb_dev, 0),
  VPRBRD_USB_REQUEST_GPIOA, VPRBRD_USB_TYPE_IN, 0x0000,
  0x0000, gamsg, sizeof(struct vprbrd_gpioa_msg),
  VPRBRD_USB_TIMEOUT_MS);
 answer = gamsg->answer & 0x01;

 mutex_unlock(&vb->lock);

 if (ret != sizeof(struct vprbrd_gpioa_msg))
  error = -EREMOTEIO;

 if (error)
  return error;

 return answer;
}
