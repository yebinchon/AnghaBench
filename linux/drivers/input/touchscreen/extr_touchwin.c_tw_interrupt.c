
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw {int touched; unsigned char* data; scalar_t__ idx; struct input_dev* dev; } ;
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 scalar_t__ TW_LENGTH ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 struct tw* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static irqreturn_t tw_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct tw *tw = serio_get_drvdata(serio);
 struct input_dev *dev = tw->dev;

 if (data) {
  tw->touched = 1;
  tw->data[tw->idx++] = data;

  if (tw->idx == TW_LENGTH && tw->data[1] == tw->data[2]) {
   input_report_abs(dev, ABS_X, tw->data[0]);
   input_report_abs(dev, ABS_Y, tw->data[1]);
   input_report_key(dev, BTN_TOUCH, 1);
   input_sync(dev);
   tw->idx = 0;
  }
 } else if (tw->touched) {
  input_report_key(dev, BTN_TOUCH, 0);
  input_sync(dev);
  tw->idx = 0;
  tw->touched = 0;
 }

 return IRQ_HANDLED;
}
