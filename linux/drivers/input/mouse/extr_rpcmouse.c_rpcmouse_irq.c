
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int IOMD_MOUSEX ;
 int IOMD_MOUSEY ;
 int IOMEM (int) ;
 int IRQ_HANDLED ;
 int REL_X ;
 int REL_Y ;
 int __raw_readl (int ) ;
 int input_report_key (struct input_dev*,int ,short) ;
 int input_report_rel (struct input_dev*,int ,short) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ iomd_readl (int ) ;
 short rpcmouse_lastx ;
 short rpcmouse_lasty ;

__attribute__((used)) static irqreturn_t rpcmouse_irq(int irq, void *dev_id)
{
 struct input_dev *dev = dev_id;
 short x, y, dx, dy, b;

 x = (short) iomd_readl(IOMD_MOUSEX);
 y = (short) iomd_readl(IOMD_MOUSEY);
 b = (short) (__raw_readl(IOMEM(0xe0310000)) ^ 0x70);

 dx = x - rpcmouse_lastx;
 dy = y - rpcmouse_lasty;

 rpcmouse_lastx = x;
 rpcmouse_lasty = y;

 input_report_rel(dev, REL_X, dx);
 input_report_rel(dev, REL_Y, -dy);

 input_report_key(dev, BTN_LEFT, b & 0x40);
 input_report_key(dev, BTN_MIDDLE, b & 0x20);
 input_report_key(dev, BTN_RIGHT, b & 0x10);

 input_sync(dev);

 return IRQ_HANDLED;
}
