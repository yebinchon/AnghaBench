
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct w8001 {int id; int phys; } ;
struct serio {int dev; } ;
struct TYPE_3__ {int * parent; } ;
struct TYPE_4__ {int vendor; int version; int product; int bustype; } ;
struct input_dev {TYPE_1__ dev; int close; int open; TYPE_2__ id; int phys; } ;


 int BUS_RS232 ;
 int input_set_drvdata (struct input_dev*,struct w8001*) ;
 int w8001_close ;
 int w8001_open ;

__attribute__((used)) static void w8001_set_devdata(struct input_dev *dev, struct w8001 *w8001,
         struct serio *serio)
{
 dev->phys = w8001->phys;
 dev->id.bustype = BUS_RS232;
 dev->id.product = w8001->id;
 dev->id.vendor = 0x056a;
 dev->id.version = 0x0100;
 dev->open = w8001_open;
 dev->close = w8001_close;

 dev->dev.parent = &serio->dev;

 input_set_drvdata(dev, w8001);
}
