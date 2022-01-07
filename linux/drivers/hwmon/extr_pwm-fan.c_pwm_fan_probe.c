
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ period; } ;
struct thermal_cooling_device {int irq; int pulses_per_revolution; struct thermal_cooling_device* cdev; int of_node; int pwm_fan_max_state; int pwm_fan_state; int rpm_timer; int sample_start; struct thermal_cooling_device* pwm; TYPE_1__ args; int pwm_value; struct thermal_cooling_device* reg_en; int lock; } ;
struct pwm_state {int enabled; scalar_t__ duty_cycle; } ;
struct pwm_fan_ctx {int irq; int pulses_per_revolution; struct pwm_fan_ctx* cdev; int of_node; int pwm_fan_max_state; int pwm_fan_state; int rpm_timer; int sample_start; struct pwm_fan_ctx* pwm; TYPE_1__ args; int pwm_value; struct pwm_fan_ctx* reg_en; int lock; } ;
struct platform_device {int name; struct thermal_cooling_device dev; } ;
struct device {int irq; int pulses_per_revolution; struct device* cdev; int of_node; int pwm_fan_max_state; int pwm_fan_state; int rpm_timer; int sample_start; struct device* pwm; TYPE_1__ args; int pwm_value; struct device* reg_en; int lock; } ;


 int CONFIG_THERMAL ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ HZ ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct thermal_cooling_device*) ;
 int MAX_PWM ;
 int PTR_ERR (struct thermal_cooling_device*) ;
 int dev_err (struct thermal_cooling_device*,char*,...) ;
 int devm_add_action_or_reset (struct thermal_cooling_device*,int ,struct thermal_cooling_device*) ;
 struct thermal_cooling_device* devm_hwmon_device_register_with_groups (struct thermal_cooling_device*,char*,struct thermal_cooling_device*,int ) ;
 struct thermal_cooling_device* devm_kzalloc (struct thermal_cooling_device*,int,int ) ;
 struct thermal_cooling_device* devm_of_pwm_get (struct thermal_cooling_device*,int ,int *) ;
 struct thermal_cooling_device* devm_regulator_get_optional (struct thermal_cooling_device*,char*) ;
 int devm_request_irq (struct thermal_cooling_device*,int,int ,int ,int ,struct thermal_cooling_device*) ;
 struct thermal_cooling_device* devm_thermal_of_cooling_device_register (struct thermal_cooling_device*,int ,char*,struct thermal_cooling_device*,int *) ;
 scalar_t__ jiffies ;
 int ktime_get () ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq_optional (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct thermal_cooling_device*) ;
 int pulse_handler ;
 int pwm_apply_state (struct thermal_cooling_device*,struct pwm_state*) ;
 int pwm_fan_cooling_ops ;
 int pwm_fan_groups ;
 int pwm_fan_of_get_cooling_data (struct thermal_cooling_device*,struct thermal_cooling_device*) ;
 int pwm_fan_pwm_disable ;
 int pwm_fan_regulator_disable ;
 int pwm_init_state (struct thermal_cooling_device*,struct pwm_state*) ;
 int regulator_enable (struct thermal_cooling_device*) ;
 int sample_timer ;
 int thermal_cdev_update (struct thermal_cooling_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int pwm_fan_probe(struct platform_device *pdev)
{
 struct thermal_cooling_device *cdev;
 struct device *dev = &pdev->dev;
 struct pwm_fan_ctx *ctx;
 struct device *hwmon;
 int ret;
 struct pwm_state state = { };
 u32 ppr = 2;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 mutex_init(&ctx->lock);

 ctx->pwm = devm_of_pwm_get(dev, dev->of_node, ((void*)0));
 if (IS_ERR(ctx->pwm)) {
  ret = PTR_ERR(ctx->pwm);

  if (ret != -EPROBE_DEFER)
   dev_err(dev, "Could not get PWM: %d\n", ret);

  return ret;
 }

 platform_set_drvdata(pdev, ctx);

 ctx->irq = platform_get_irq_optional(pdev, 0);
 if (ctx->irq == -EPROBE_DEFER)
  return ctx->irq;

 ctx->reg_en = devm_regulator_get_optional(dev, "fan");
 if (IS_ERR(ctx->reg_en)) {
  if (PTR_ERR(ctx->reg_en) != -ENODEV)
   return PTR_ERR(ctx->reg_en);

  ctx->reg_en = ((void*)0);
 } else {
  ret = regulator_enable(ctx->reg_en);
  if (ret) {
   dev_err(dev, "Failed to enable fan supply: %d\n", ret);
   return ret;
  }
  ret = devm_add_action_or_reset(dev, pwm_fan_regulator_disable,
            ctx->reg_en);
  if (ret)
   return ret;
 }

 ctx->pwm_value = MAX_PWM;


 pwm_init_state(ctx->pwm, &state);
 state.duty_cycle = ctx->pwm->args.period - 1;
 state.enabled = 1;

 ret = pwm_apply_state(ctx->pwm, &state);
 if (ret) {
  dev_err(dev, "Failed to configure PWM: %d\n", ret);
  return ret;
 }
 timer_setup(&ctx->rpm_timer, sample_timer, 0);
 ret = devm_add_action_or_reset(dev, pwm_fan_pwm_disable, ctx);
 if (ret)
  return ret;

 of_property_read_u32(dev->of_node, "pulses-per-revolution", &ppr);
 ctx->pulses_per_revolution = ppr;
 if (!ctx->pulses_per_revolution) {
  dev_err(dev, "pulses-per-revolution can't be zero.\n");
  return -EINVAL;
 }

 if (ctx->irq > 0) {
  ret = devm_request_irq(dev, ctx->irq, pulse_handler, 0,
           pdev->name, ctx);
  if (ret) {
   dev_err(dev, "Failed to request interrupt: %d\n", ret);
   return ret;
  }
  ctx->sample_start = ktime_get();
  mod_timer(&ctx->rpm_timer, jiffies + HZ);
 }

 hwmon = devm_hwmon_device_register_with_groups(dev, "pwmfan",
             ctx, pwm_fan_groups);
 if (IS_ERR(hwmon)) {
  dev_err(dev, "Failed to register hwmon device\n");
  return PTR_ERR(hwmon);
 }

 ret = pwm_fan_of_get_cooling_data(dev, ctx);
 if (ret)
  return ret;

 ctx->pwm_fan_state = ctx->pwm_fan_max_state;
 if (IS_ENABLED(CONFIG_THERMAL)) {
  cdev = devm_thermal_of_cooling_device_register(dev,
   dev->of_node, "pwm-fan", ctx, &pwm_fan_cooling_ops);
  if (IS_ERR(cdev)) {
   ret = PTR_ERR(cdev);
   dev_err(dev,
    "Failed to register pwm-fan as cooling device: %d\n",
    ret);
   return ret;
  }
  ctx->cdev = cdev;
  thermal_cdev_update(cdev);
 }

 return 0;
}
