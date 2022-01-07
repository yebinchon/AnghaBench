
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int parent; } ;
struct platform_device {TYPE_8__ dev; } ;
struct max77693_haptic {int suspend_state; int dev_type; TYPE_4__* input_dev; int motor_reg; int pwm_dev; int work; int regmap_haptic; int mode; int type; TYPE_8__* dev; int regmap_pmic; } ;
struct max77693_dev {int regmap; int regmap_haptic; } ;
struct TYPE_15__ {TYPE_8__* parent; } ;
struct TYPE_14__ {int version; } ;
struct TYPE_17__ {char* name; int close; int open; TYPE_2__ dev; TYPE_1__ id; } ;
struct TYPE_16__ {int driver_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int EV_FF ;
 int FF_RUMBLE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MAX77693_HAPTIC_EXTERNAL_MODE ;
 int MAX77693_HAPTIC_LRA ;
 int PTR_ERR (int ) ;


 int dev_err (TYPE_8__*,char*,...) ;
 struct max77693_dev* dev_get_drvdata (int ) ;
 TYPE_4__* devm_input_allocate_device (TYPE_8__*) ;
 struct max77693_haptic* devm_kzalloc (TYPE_8__*,int,int ) ;
 int devm_pwm_get (TYPE_8__*,int *) ;
 int devm_regulator_get (TYPE_8__*,char*) ;
 int input_ff_create_memless (TYPE_4__*,int *,int ) ;
 int input_register_device (TYPE_4__*) ;
 int input_set_capability (TYPE_4__*,int ,int ) ;
 int input_set_drvdata (TYPE_4__*,struct max77693_haptic*) ;
 int max77693_haptic_close ;
 int max77693_haptic_open ;
 int max77693_haptic_play_effect ;
 int max77693_haptic_play_work ;
 TYPE_3__* platform_get_device_id (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct max77693_haptic*) ;
 int pwm_apply_args (int ) ;

__attribute__((used)) static int max77693_haptic_probe(struct platform_device *pdev)
{
 struct max77693_dev *max77693 = dev_get_drvdata(pdev->dev.parent);
 struct max77693_haptic *haptic;
 int error;

 haptic = devm_kzalloc(&pdev->dev, sizeof(*haptic), GFP_KERNEL);
 if (!haptic)
  return -ENOMEM;

 haptic->regmap_pmic = max77693->regmap;
 haptic->dev = &pdev->dev;
 haptic->type = MAX77693_HAPTIC_LRA;
 haptic->mode = MAX77693_HAPTIC_EXTERNAL_MODE;
 haptic->suspend_state = 0;


 haptic->dev_type = platform_get_device_id(pdev)->driver_data;
 switch (haptic->dev_type) {
 case 129:
  haptic->regmap_haptic = max77693->regmap_haptic;
  break;
 case 128:
  haptic->regmap_haptic = max77693->regmap;
  break;
 default:
  dev_err(&pdev->dev, "unsupported device type: %u\n",
   haptic->dev_type);
  return -EINVAL;
 }

 INIT_WORK(&haptic->work, max77693_haptic_play_work);


 haptic->pwm_dev = devm_pwm_get(&pdev->dev, ((void*)0));
 if (IS_ERR(haptic->pwm_dev)) {
  dev_err(&pdev->dev, "failed to get pwm device\n");
  return PTR_ERR(haptic->pwm_dev);
 }





 pwm_apply_args(haptic->pwm_dev);

 haptic->motor_reg = devm_regulator_get(&pdev->dev, "haptic");
 if (IS_ERR(haptic->motor_reg)) {
  dev_err(&pdev->dev, "failed to get regulator\n");
  return PTR_ERR(haptic->motor_reg);
 }


 haptic->input_dev = devm_input_allocate_device(&pdev->dev);
 if (!haptic->input_dev) {
  dev_err(&pdev->dev, "failed to allocate input device\n");
  return -ENOMEM;
 }

 haptic->input_dev->name = "max77693-haptic";
 haptic->input_dev->id.version = 1;
 haptic->input_dev->dev.parent = &pdev->dev;
 haptic->input_dev->open = max77693_haptic_open;
 haptic->input_dev->close = max77693_haptic_close;
 input_set_drvdata(haptic->input_dev, haptic);
 input_set_capability(haptic->input_dev, EV_FF, FF_RUMBLE);

 error = input_ff_create_memless(haptic->input_dev, ((void*)0),
    max77693_haptic_play_effect);
 if (error) {
  dev_err(&pdev->dev, "failed to create force-feedback\n");
  return error;
 }

 error = input_register_device(haptic->input_dev);
 if (error) {
  dev_err(&pdev->dev, "failed to register input device\n");
  return error;
 }

 platform_set_drvdata(pdev, haptic);

 return 0;
}
