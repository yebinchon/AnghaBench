
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dev; } ;
struct TYPE_2__ {unsigned short joy0dat; } ;


 int IRQ_AMIGA_VERTB ;
 TYPE_1__ amiga_custom ;
 int amimouse_interrupt ;
 unsigned short amimouse_lastx ;
 unsigned short amimouse_lasty ;
 int dev_err (int *,char*,int ) ;
 int request_irq (int ,int ,int ,char*,struct input_dev*) ;

__attribute__((used)) static int amimouse_open(struct input_dev *dev)
{
 unsigned short joy0dat;
 int error;

 joy0dat = amiga_custom.joy0dat;

 amimouse_lastx = joy0dat & 0xff;
 amimouse_lasty = joy0dat >> 8;

 error = request_irq(IRQ_AMIGA_VERTB, amimouse_interrupt, 0, "amimouse",
       dev);
 if (error)
  dev_err(&dev->dev, "Can't allocate irq %d\n", IRQ_AMIGA_VERTB);

 return error;
}
