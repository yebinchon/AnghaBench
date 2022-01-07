
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct msm_vibrator {int enabled; TYPE_2__* input; int worker; int mutex; int base; int clk; int enable_gpio; int vcc; } ;
struct TYPE_7__ {int bustype; } ;
struct TYPE_8__ {char* name; int close; TYPE_1__ id; } ;


 int BUS_HOST ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_FF ;
 int FF_RUMBLE ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,char*) ;
 int devm_gpiod_get (int *,char*,int ) ;
 TYPE_2__* devm_input_allocate_device (int *) ;
 int devm_ioremap (int *,int ,int ) ;
 struct msm_vibrator* devm_kzalloc (int *,int,int ) ;
 int devm_regulator_get (int *,char*) ;
 int input_ff_create_memless (TYPE_2__*,int *,int ) ;
 int input_register_device (TYPE_2__*) ;
 int input_set_capability (TYPE_2__*,int ,int ) ;
 int input_set_drvdata (TYPE_2__*,struct msm_vibrator*) ;
 int msm_vibrator_close ;
 int msm_vibrator_play_effect ;
 int msm_vibrator_worker ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct msm_vibrator*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int msm_vibrator_probe(struct platform_device *pdev)
{
 struct msm_vibrator *vibrator;
 struct resource *res;
 int ret;

 vibrator = devm_kzalloc(&pdev->dev, sizeof(*vibrator), GFP_KERNEL);
 if (!vibrator)
  return -ENOMEM;

 vibrator->input = devm_input_allocate_device(&pdev->dev);
 if (!vibrator->input)
  return -ENOMEM;

 vibrator->vcc = devm_regulator_get(&pdev->dev, "vcc");
 if (IS_ERR(vibrator->vcc)) {
  if (PTR_ERR(vibrator->vcc) != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Failed to get regulator: %ld\n",
    PTR_ERR(vibrator->vcc));
  return PTR_ERR(vibrator->vcc);
 }

 vibrator->enable_gpio = devm_gpiod_get(&pdev->dev, "enable",
            GPIOD_OUT_LOW);
 if (IS_ERR(vibrator->enable_gpio)) {
  if (PTR_ERR(vibrator->enable_gpio) != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Failed to get enable gpio: %ld\n",
    PTR_ERR(vibrator->enable_gpio));
  return PTR_ERR(vibrator->enable_gpio);
 }

 vibrator->clk = devm_clk_get(&pdev->dev, "pwm");
 if (IS_ERR(vibrator->clk)) {
  if (PTR_ERR(vibrator->clk) != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Failed to lookup pwm clock: %ld\n",
    PTR_ERR(vibrator->clk));
  return PTR_ERR(vibrator->clk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "Failed to get platform resource\n");
  return -ENODEV;
 }

 vibrator->base = devm_ioremap(&pdev->dev, res->start,
         resource_size(res));
 if (!vibrator->base) {
  dev_err(&pdev->dev, "Failed to iomap resource.\n");
  return -ENOMEM;
 }

 vibrator->enabled = 0;
 mutex_init(&vibrator->mutex);
 INIT_WORK(&vibrator->worker, msm_vibrator_worker);

 vibrator->input->name = "msm-vibrator";
 vibrator->input->id.bustype = BUS_HOST;
 vibrator->input->close = msm_vibrator_close;

 input_set_drvdata(vibrator->input, vibrator);
 input_set_capability(vibrator->input, EV_FF, FF_RUMBLE);

 ret = input_ff_create_memless(vibrator->input, ((void*)0),
          msm_vibrator_play_effect);
 if (ret) {
  dev_err(&pdev->dev, "Failed to create ff memless: %d", ret);
  return ret;
 }

 ret = input_register_device(vibrator->input);
 if (ret) {
  dev_err(&pdev->dev, "Failed to register input device: %d", ret);
  return ret;
 }

 platform_set_drvdata(pdev, vibrator);

 return 0;
}
