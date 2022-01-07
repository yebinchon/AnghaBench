
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int EV_FF ;
 int uinput_dev_event (struct input_dev*,int ,int,int) ;

__attribute__((used)) static int uinput_dev_playback(struct input_dev *dev, int effect_id, int value)
{
 return uinput_dev_event(dev, EV_FF, effect_id, value);
}
