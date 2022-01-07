
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int effect_id; } ;
struct uinput_request {TYPE_1__ u; int code; } ;
struct uinput_device {int dummy; } ;
struct input_dev {int evbit; } ;


 int ENOSYS ;
 int EV_FF ;
 int UI_FF_ERASE ;
 struct uinput_device* input_get_drvdata (struct input_dev*) ;
 int test_bit (int ,int ) ;
 int uinput_request_submit (struct uinput_device*,struct uinput_request*) ;

__attribute__((used)) static int uinput_dev_erase_effect(struct input_dev *dev, int effect_id)
{
 struct uinput_device *udev = input_get_drvdata(dev);
 struct uinput_request request;

 if (!test_bit(EV_FF, dev->evbit))
  return -ENOSYS;

 request.code = UI_FF_ERASE;
 request.u.effect_id = effect_id;

 return uinput_request_submit(udev, &request);
}
