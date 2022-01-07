
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int atamouse_interrupt ;
 int atari_input_mouse_interrupt_hook ;
 scalar_t__ atari_mouse_buttons ;
 int ikbd_mouse_rel_pos () ;
 int ikbd_mouse_thresh (int ,int ) ;
 int ikbd_mouse_y0_top () ;
 int * mouse_threshold ;

__attribute__((used)) static int atamouse_open(struct input_dev *dev)
{



 ikbd_mouse_y0_top();
 ikbd_mouse_thresh(mouse_threshold[0], mouse_threshold[1]);
 ikbd_mouse_rel_pos();
 atari_input_mouse_interrupt_hook = atamouse_interrupt;

 return 0;
}
