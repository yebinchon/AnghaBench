
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct iforce_core_effect {int flags; } ;
struct iforce {struct iforce_core_effect* core_effects; } ;
struct ff_effect {size_t id; int type; } ;


 int EAGAIN ;
 int EINVAL ;

 int FF_CORE_IS_USED ;
 int FF_CORE_UPDATE ;



 scalar_t__ __test_and_set_bit (int ,int ) ;
 int iforce_upload_condition (struct iforce*,struct ff_effect*,struct ff_effect*) ;
 int iforce_upload_constant (struct iforce*,struct ff_effect*,struct ff_effect*) ;
 int iforce_upload_periodic (struct iforce*,struct ff_effect*,struct ff_effect*) ;
 struct iforce* input_get_drvdata (struct input_dev*) ;
 int set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int iforce_upload_effect(struct input_dev *dev, struct ff_effect *effect, struct ff_effect *old)
{
 struct iforce *iforce = input_get_drvdata(dev);
 struct iforce_core_effect *core_effect = &iforce->core_effects[effect->id];
 int ret;

 if (__test_and_set_bit(FF_CORE_IS_USED, core_effect->flags)) {

  if (test_bit(FF_CORE_UPDATE, core_effect->flags))
   return -EAGAIN;
 }




 switch (effect->type) {
 case 129:
  ret = iforce_upload_periodic(iforce, effect, old);
  break;

 case 131:
  ret = iforce_upload_constant(iforce, effect, old);
  break;

 case 128:
 case 130:
  ret = iforce_upload_condition(iforce, effect, old);
  break;

 default:
  return -EINVAL;
 }

 if (ret == 0) {



  set_bit(FF_CORE_UPDATE, core_effect->flags);
 }
 return ret;
}
