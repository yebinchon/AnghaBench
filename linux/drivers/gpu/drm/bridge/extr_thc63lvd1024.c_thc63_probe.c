
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * timings; int * funcs; int of_node; struct thc63_dev* driver_private; } ;
struct thc63_dev {TYPE_1__ bridge; int timings; int vcc; TYPE_2__* dev; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct thc63_dev* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_regulator_get_optional (TYPE_2__*,char*) ;
 int drm_bridge_add (TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct thc63_dev*) ;
 int thc63_bridge_func ;
 int thc63_gpio_init (struct thc63_dev*) ;
 int thc63_parse_dt (struct thc63_dev*) ;

__attribute__((used)) static int thc63_probe(struct platform_device *pdev)
{
 struct thc63_dev *thc63;
 int ret;

 thc63 = devm_kzalloc(&pdev->dev, sizeof(*thc63), GFP_KERNEL);
 if (!thc63)
  return -ENOMEM;

 thc63->dev = &pdev->dev;
 platform_set_drvdata(pdev, thc63);

 thc63->vcc = devm_regulator_get_optional(thc63->dev, "vcc");
 if (IS_ERR(thc63->vcc)) {
  if (PTR_ERR(thc63->vcc) == -EPROBE_DEFER)
   return -EPROBE_DEFER;

  dev_err(thc63->dev, "Unable to get \"vcc\" supply: %ld\n",
   PTR_ERR(thc63->vcc));
  return PTR_ERR(thc63->vcc);
 }

 ret = thc63_gpio_init(thc63);
 if (ret)
  return ret;

 ret = thc63_parse_dt(thc63);
 if (ret)
  return ret;

 thc63->bridge.driver_private = thc63;
 thc63->bridge.of_node = pdev->dev.of_node;
 thc63->bridge.funcs = &thc63_bridge_func;
 thc63->bridge.timings = &thc63->timings;

 drm_bridge_add(&thc63->bridge);

 return 0;
}
