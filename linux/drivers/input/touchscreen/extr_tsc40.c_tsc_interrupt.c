
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc_ser {unsigned char* data; size_t idx; struct input_dev* dev; } ;
struct serio {int dev; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int dev_dbg (int *,char*,unsigned char,...) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 struct tsc_ser* serio_get_drvdata (struct serio*) ;
 int tsc_process_data (struct tsc_ser*) ;
 int unlikely (unsigned char) ;

__attribute__((used)) static irqreturn_t tsc_interrupt(struct serio *serio,
  unsigned char data, unsigned int flags)
{
 struct tsc_ser *ptsc = serio_get_drvdata(serio);
 struct input_dev *dev = ptsc->dev;

 ptsc->data[ptsc->idx] = data;
 switch (ptsc->idx++) {
 case 0:
  if (unlikely((data & 0x3e) != 0x10)) {
   dev_dbg(&serio->dev,
    "unsynchronized packet start (0x%02x)\n", data);
   ptsc->idx = 0;
  } else if (!(data & 0x01)) {
   input_report_key(dev, BTN_TOUCH, 0);
   input_sync(dev);
   ptsc->idx = 0;
  }
  break;

 case 1:
 case 3:
  if (unlikely(data & 0xfc)) {
   dev_dbg(&serio->dev,
    "unsynchronized data 0x%02x at offset %d\n",
    data, ptsc->idx - 1);
   ptsc->idx = 0;
  }
  break;

 case 4:
  tsc_process_data(ptsc);
  ptsc->idx = 0;
  break;
 }

 return IRQ_HANDLED;
}
