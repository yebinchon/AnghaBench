
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct twl6040 {int dummy; } ;
struct TYPE_6__ {struct device* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device {int of_node; } ;
struct TYPE_5__ {int base; int ngpio; int of_node; TYPE_2__* parent; } ;


 scalar_t__ TWL6041_REV_ES2_0 ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct twl6040* dev_get_drvdata (struct device*) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_1__*,int *) ;
 scalar_t__ twl6040_get_revid (struct twl6040*) ;
 TYPE_1__ twl6040gpo_chip ;

__attribute__((used)) static int gpo_twl6040_probe(struct platform_device *pdev)
{
 struct device *twl6040_core_dev = pdev->dev.parent;
 struct twl6040 *twl6040 = dev_get_drvdata(twl6040_core_dev);
 int ret;

 twl6040gpo_chip.base = -1;

 if (twl6040_get_revid(twl6040) < TWL6041_REV_ES2_0)
  twl6040gpo_chip.ngpio = 3;
 else
  twl6040gpo_chip.ngpio = 1;

 twl6040gpo_chip.parent = &pdev->dev;




 ret = devm_gpiochip_add_data(&pdev->dev, &twl6040gpo_chip, ((void*)0));
 if (ret < 0) {
  dev_err(&pdev->dev, "could not register gpiochip, %d\n", ret);
  twl6040gpo_chip.ngpio = 0;
 }

 return ret;
}
