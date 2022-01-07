
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int REL_X ;
 int REL_Y ;
 int atamouse_dev ;
 int atari_mouse_buttons ;
 int input_report_key (int ,int ,int) ;
 int input_report_rel (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void atamouse_interrupt(char *buf)
{
 int buttons, dx, dy;

 buttons = (buf[0] & 1) | ((buf[0] & 2) << 1);






 dx = buf[1];
 dy = buf[2];

 input_report_rel(atamouse_dev, REL_X, dx);
 input_report_rel(atamouse_dev, REL_Y, dy);

 input_report_key(atamouse_dev, BTN_LEFT, buttons & 0x4);
 input_report_key(atamouse_dev, BTN_MIDDLE, buttons & 0x2);
 input_report_key(atamouse_dev, BTN_RIGHT, buttons & 0x1);

 input_sync(atamouse_dev);

 return;
}
