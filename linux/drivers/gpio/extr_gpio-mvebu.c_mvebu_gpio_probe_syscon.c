
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mvebu_gpio_chip {int offset; int regs; } ;
struct TYPE_3__ {int of_node; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ of_property_read_u32 (int ,char*,int *) ;
 int syscon_node_to_regmap (int ) ;

__attribute__((used)) static int mvebu_gpio_probe_syscon(struct platform_device *pdev,
       struct mvebu_gpio_chip *mvchip)
{
 mvchip->regs = syscon_node_to_regmap(pdev->dev.parent->of_node);
 if (IS_ERR(mvchip->regs))
  return PTR_ERR(mvchip->regs);

 if (of_property_read_u32(pdev->dev.of_node, "offset", &mvchip->offset))
  return -EINVAL;

 return 0;
}
