
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct input_dev {int dummy; } ;


 int EV_FF ;
 int FF_GAIN ;
 int uinput_dev_event (struct input_dev*,int ,int ,int ) ;

__attribute__((used)) static void uinput_dev_set_gain(struct input_dev *dev, u16 gain)
{
 uinput_dev_event(dev, EV_FF, FF_GAIN, gain);
}
