
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_fan_ctx {scalar_t__* pwm_fan_cooling_levels; int pwm_fan_max_state; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAX_PWM ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__* devm_kcalloc (struct device*,int,int,int ) ;
 int of_find_property (struct device_node*,char*,int *) ;
 int of_property_count_u32_elems (struct device_node*,char*) ;
 int of_property_read_u32_array (struct device_node*,char*,scalar_t__*,int) ;

__attribute__((used)) static int pwm_fan_of_get_cooling_data(struct device *dev,
           struct pwm_fan_ctx *ctx)
{
 struct device_node *np = dev->of_node;
 int num, i, ret;

 if (!of_find_property(np, "cooling-levels", ((void*)0)))
  return 0;

 ret = of_property_count_u32_elems(np, "cooling-levels");
 if (ret <= 0) {
  dev_err(dev, "Wrong data!\n");
  return ret ? : -EINVAL;
 }

 num = ret;
 ctx->pwm_fan_cooling_levels = devm_kcalloc(dev, num, sizeof(u32),
         GFP_KERNEL);
 if (!ctx->pwm_fan_cooling_levels)
  return -ENOMEM;

 ret = of_property_read_u32_array(np, "cooling-levels",
      ctx->pwm_fan_cooling_levels, num);
 if (ret) {
  dev_err(dev, "Property 'cooling-levels' cannot be read!\n");
  return ret;
 }

 for (i = 0; i < num; i++) {
  if (ctx->pwm_fan_cooling_levels[i] > MAX_PWM) {
   dev_err(dev, "PWM fan state[%d]:%d > %d\n", i,
    ctx->pwm_fan_cooling_levels[i], MAX_PWM);
   return -EINVAL;
  }
 }

 ctx->pwm_fan_max_state = num - 1;

 return 0;
}
