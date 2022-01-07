
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct touchit213 {unsigned char* data; size_t idx; struct input_dev* dev; } ;
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int T213_FORMAT_STATUS_BYTE ;
 int T213_FORMAT_STATUS_MASK ;
 int T213_FORMAT_TOUCH_BIT ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int pr_debug (char*,unsigned char) ;
 struct touchit213* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t touchit213_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct touchit213 *touchit213 = serio_get_drvdata(serio);
 struct input_dev *dev = touchit213->dev;

 touchit213->data[touchit213->idx] = data;

 switch (touchit213->idx++) {
 case 0:
  if ((touchit213->data[0] & T213_FORMAT_STATUS_MASK) !=
    T213_FORMAT_STATUS_BYTE) {
   pr_debug("unsynchronized data: 0x%02x\n", data);
   touchit213->idx = 0;
  }
  break;

 case 4:
  touchit213->idx = 0;
  input_report_abs(dev, ABS_X,
   (touchit213->data[1] << 7) | touchit213->data[2]);
  input_report_abs(dev, ABS_Y,
   (touchit213->data[3] << 7) | touchit213->data[4]);
  input_report_key(dev, BTN_TOUCH,
   touchit213->data[0] & T213_FORMAT_TOUCH_BIT);
  input_sync(dev);
  break;
 }

 return IRQ_HANDLED;
}
