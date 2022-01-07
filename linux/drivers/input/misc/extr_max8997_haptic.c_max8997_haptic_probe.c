
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct max8997_platform_data {struct max8997_haptic_platform_data* haptic_pdata; } ;
struct max8997_haptic_platform_data {int mode; int pwm_channel_id; int pattern_signal_period; int pattern_cycle; int internal_mode_pattern; int pwm_divisor; int type; int pwm_period; } ;
struct max8997_haptic {int mode; int pwm; int regulator; int pattern_signal_period; int pattern_cycle; int internal_mode_pattern; int pwm_divisor; int type; int pwm_period; struct input_dev* input_dev; TYPE_3__* dev; int client; int mutex; int work; } ;
struct max8997_dev {int haptic; int dev; } ;
struct TYPE_6__ {TYPE_3__* parent; } ;
struct TYPE_5__ {int version; } ;
struct input_dev {char* name; int close; TYPE_2__ dev; TYPE_1__ id; } ;


 int EINVAL ;
 int ENOMEM ;
 int EV_FF ;
 int FF_RUMBLE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;


 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct max8997_dev* dev_get_drvdata (int ) ;
 struct max8997_platform_data* dev_get_platdata (int ) ;
 struct input_dev* input_allocate_device () ;
 int input_ff_create_memless (struct input_dev*,int *,int ) ;
 int input_ff_destroy (struct input_dev*) ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct max8997_haptic*) ;
 int kfree (struct max8997_haptic*) ;
 struct max8997_haptic* kzalloc (int,int ) ;
 int max8997_haptic_close ;
 int max8997_haptic_play_effect ;
 int max8997_haptic_play_effect_work ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct max8997_haptic*) ;
 int pwm_apply_args (int ) ;
 int pwm_free (int ) ;
 int pwm_request (int ,char*) ;
 int regulator_get (TYPE_3__*,char*) ;
 int regulator_put (int ) ;

__attribute__((used)) static int max8997_haptic_probe(struct platform_device *pdev)
{
 struct max8997_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 const struct max8997_platform_data *pdata =
     dev_get_platdata(iodev->dev);
 const struct max8997_haptic_platform_data *haptic_pdata = ((void*)0);
 struct max8997_haptic *chip;
 struct input_dev *input_dev;
 int error;

 if (pdata)
  haptic_pdata = pdata->haptic_pdata;

 if (!haptic_pdata) {
  dev_err(&pdev->dev, "no haptic platform data\n");
  return -EINVAL;
 }

 chip = kzalloc(sizeof(struct max8997_haptic), GFP_KERNEL);
 input_dev = input_allocate_device();
 if (!chip || !input_dev) {
  dev_err(&pdev->dev, "unable to allocate memory\n");
  error = -ENOMEM;
  goto err_free_mem;
 }

 INIT_WORK(&chip->work, max8997_haptic_play_effect_work);
 mutex_init(&chip->mutex);

 chip->client = iodev->haptic;
 chip->dev = &pdev->dev;
 chip->input_dev = input_dev;
 chip->pwm_period = haptic_pdata->pwm_period;
 chip->type = haptic_pdata->type;
 chip->mode = haptic_pdata->mode;
 chip->pwm_divisor = haptic_pdata->pwm_divisor;

 switch (chip->mode) {
 case 128:
  chip->internal_mode_pattern =
    haptic_pdata->internal_mode_pattern;
  chip->pattern_cycle = haptic_pdata->pattern_cycle;
  chip->pattern_signal_period =
    haptic_pdata->pattern_signal_period;
  break;

 case 129:
  chip->pwm = pwm_request(haptic_pdata->pwm_channel_id,
     "max8997-haptic");
  if (IS_ERR(chip->pwm)) {
   error = PTR_ERR(chip->pwm);
   dev_err(&pdev->dev,
    "unable to request PWM for haptic, error: %d\n",
    error);
   goto err_free_mem;
  }





  pwm_apply_args(chip->pwm);
  break;

 default:
  dev_err(&pdev->dev,
   "Invalid chip mode specified (%d)\n", chip->mode);
  error = -EINVAL;
  goto err_free_mem;
 }

 chip->regulator = regulator_get(&pdev->dev, "inmotor");
 if (IS_ERR(chip->regulator)) {
  error = PTR_ERR(chip->regulator);
  dev_err(&pdev->dev,
   "unable to get regulator, error: %d\n",
   error);
  goto err_free_pwm;
 }

 input_dev->name = "max8997-haptic";
 input_dev->id.version = 1;
 input_dev->dev.parent = &pdev->dev;
 input_dev->close = max8997_haptic_close;
 input_set_drvdata(input_dev, chip);
 input_set_capability(input_dev, EV_FF, FF_RUMBLE);

 error = input_ff_create_memless(input_dev, ((void*)0),
    max8997_haptic_play_effect);
 if (error) {
  dev_err(&pdev->dev,
   "unable to create FF device, error: %d\n",
   error);
  goto err_put_regulator;
 }

 error = input_register_device(input_dev);
 if (error) {
  dev_err(&pdev->dev,
   "unable to register input device, error: %d\n",
   error);
  goto err_destroy_ff;
 }

 platform_set_drvdata(pdev, chip);
 return 0;

err_destroy_ff:
 input_ff_destroy(input_dev);
err_put_regulator:
 regulator_put(chip->regulator);
err_free_pwm:
 if (chip->mode == 129)
  pwm_free(chip->pwm);
err_free_mem:
 input_free_device(input_dev);
 kfree(chip);

 return error;
}
