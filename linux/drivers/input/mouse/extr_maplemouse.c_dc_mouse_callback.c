
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapleq {TYPE_1__* recvbuf; struct maple_device* dev; } ;
struct maple_device {int dummy; } ;
struct input_dev {int dummy; } ;
struct dc_mouse {struct input_dev* dev; } ;
struct TYPE_2__ {unsigned char* buf; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 struct dc_mouse* maple_get_drvdata (struct maple_device*) ;

__attribute__((used)) static void dc_mouse_callback(struct mapleq *mq)
{
 int buttons, relx, rely, relz;
 struct maple_device *mapledev = mq->dev;
 struct dc_mouse *mse = maple_get_drvdata(mapledev);
 struct input_dev *dev = mse->dev;
 unsigned char *res = mq->recvbuf->buf;

 buttons = ~res[8];
 relx = *(unsigned short *)(res + 12) - 512;
 rely = *(unsigned short *)(res + 14) - 512;
 relz = *(unsigned short *)(res + 16) - 512;

 input_report_key(dev, BTN_LEFT, buttons & 4);
 input_report_key(dev, BTN_MIDDLE, buttons & 9);
 input_report_key(dev, BTN_RIGHT, buttons & 2);
 input_report_rel(dev, REL_X, relx);
 input_report_rel(dev, REL_Y, rely);
 input_report_rel(dev, REL_WHEEL, relz);
 input_sync(dev);
}
