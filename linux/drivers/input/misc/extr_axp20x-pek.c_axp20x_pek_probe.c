
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct axp20x_pek {struct axp20x_info* info; int axp20x; } ;
struct axp20x_info {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int axp20x_pek_probe_input_device (struct axp20x_pek*,struct platform_device*) ;
 scalar_t__ axp20x_pek_should_register_input (struct axp20x_pek*,struct platform_device*) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_get_drvdata (int ) ;
 struct axp20x_pek* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct axp20x_pek*) ;

__attribute__((used)) static int axp20x_pek_probe(struct platform_device *pdev)
{
 struct axp20x_pek *axp20x_pek;
 const struct platform_device_id *match = platform_get_device_id(pdev);
 int error;

 if (!match) {
  dev_err(&pdev->dev, "Failed to get platform_device_id\n");
  return -EINVAL;
 }

 axp20x_pek = devm_kzalloc(&pdev->dev, sizeof(struct axp20x_pek),
      GFP_KERNEL);
 if (!axp20x_pek)
  return -ENOMEM;

 axp20x_pek->axp20x = dev_get_drvdata(pdev->dev.parent);

 if (axp20x_pek_should_register_input(axp20x_pek, pdev)) {
  error = axp20x_pek_probe_input_device(axp20x_pek, pdev);
  if (error)
   return error;
 }

 axp20x_pek->info = (struct axp20x_info *)match->driver_data;

 platform_set_drvdata(pdev, axp20x_pek);

 return 0;
}
