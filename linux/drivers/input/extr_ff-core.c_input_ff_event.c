
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int ffbit; struct ff_device* ff; } ;
struct ff_device {int (* playback ) (struct input_dev*,unsigned int,int) ;int (* set_autocenter ) (struct input_dev*,int) ;int (* set_gain ) (struct input_dev*,int) ;} ;


 unsigned int EV_FF ;


 int check_effect_access (struct ff_device*,unsigned int,int *) ;
 int stub1 (struct input_dev*,int) ;
 int stub2 (struct input_dev*,int) ;
 int stub3 (struct input_dev*,unsigned int,int) ;
 int test_bit (int const,int ) ;

int input_ff_event(struct input_dev *dev, unsigned int type,
     unsigned int code, int value)
{
 struct ff_device *ff = dev->ff;

 if (type != EV_FF)
  return 0;

 switch (code) {
 case 128:
  if (!test_bit(128, dev->ffbit) || value > 0xffffU)
   break;

  ff->set_gain(dev, value);
  break;

 case 129:
  if (!test_bit(129, dev->ffbit) || value > 0xffffU)
   break;

  ff->set_autocenter(dev, value);
  break;

 default:
  if (check_effect_access(ff, code, ((void*)0)) == 0)
   ff->playback(dev, code, value);
  break;
 }

 return 0;
}
