
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_QUADTAP ;
 int BTN_TOOL_QUINTTAP ;
 int BTN_TOOL_TRIPLETAP ;
 int EV_KEY ;
 int input_event (struct input_dev*,int ,int ,int) ;

void input_mt_report_finger_count(struct input_dev *dev, int count)
{
 input_event(dev, EV_KEY, BTN_TOOL_FINGER, count == 1);
 input_event(dev, EV_KEY, BTN_TOOL_DOUBLETAP, count == 2);
 input_event(dev, EV_KEY, BTN_TOOL_TRIPLETAP, count == 3);
 input_event(dev, EV_KEY, BTN_TOOL_QUADTAP, count == 4);
 input_event(dev, EV_KEY, BTN_TOOL_QUINTTAP, count == 5);
}
