
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int INPORT_CONTROL_PORT ;
 int INPORT_DATA_PORT ;
 int INPORT_MODE_BASE ;
 int INPORT_MODE_HOLD ;
 int INPORT_MODE_IRQ ;
 int INPORT_REG_BTNS ;
 int INPORT_REG_MODE ;
 int INPORT_REG_X ;
 int INPORT_REG_Y ;
 int IRQ_HANDLED ;
 int REL_X ;
 int REL_Y ;
 unsigned char inb (int ) ;
 int inport_dev ;
 int input_report_key (int ,int ,unsigned char) ;
 int input_report_rel (int ,int ,unsigned char) ;
 int input_sync (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static irqreturn_t inport_interrupt(int irq, void *dev_id)
{
 unsigned char buttons;

 outb(INPORT_REG_MODE, INPORT_CONTROL_PORT);
 outb(INPORT_MODE_HOLD | INPORT_MODE_IRQ | INPORT_MODE_BASE, INPORT_DATA_PORT);

 outb(INPORT_REG_X, INPORT_CONTROL_PORT);
 input_report_rel(inport_dev, REL_X, inb(INPORT_DATA_PORT));

 outb(INPORT_REG_Y, INPORT_CONTROL_PORT);
 input_report_rel(inport_dev, REL_Y, inb(INPORT_DATA_PORT));

 outb(INPORT_REG_BTNS, INPORT_CONTROL_PORT);
 buttons = inb(INPORT_DATA_PORT);

 input_report_key(inport_dev, BTN_MIDDLE, buttons & 1);
 input_report_key(inport_dev, BTN_LEFT, buttons & 2);
 input_report_key(inport_dev, BTN_RIGHT, buttons & 4);

 outb(INPORT_REG_MODE, INPORT_CONTROL_PORT);
 outb(INPORT_MODE_IRQ | INPORT_MODE_BASE, INPORT_DATA_PORT);

 input_sync(inport_dev);
 return IRQ_HANDLED;
}
