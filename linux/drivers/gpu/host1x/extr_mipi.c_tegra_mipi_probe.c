
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tegra_mipi {int clk; int lock; int regs; TYPE_1__* dev; int soc; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_clk_get (TYPE_1__*,int *) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct tegra_mipi* devm_kzalloc (TYPE_1__*,int,int ) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_mipi*) ;
 int tegra_mipi_of_match ;

__attribute__((used)) static int tegra_mipi_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 struct tegra_mipi *mipi;
 struct resource *res;
 int err;

 match = of_match_node(tegra_mipi_of_match, pdev->dev.of_node);
 if (!match)
  return -ENODEV;

 mipi = devm_kzalloc(&pdev->dev, sizeof(*mipi), GFP_KERNEL);
 if (!mipi)
  return -ENOMEM;

 mipi->soc = match->data;
 mipi->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mipi->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mipi->regs))
  return PTR_ERR(mipi->regs);

 mutex_init(&mipi->lock);

 mipi->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(mipi->clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  return PTR_ERR(mipi->clk);
 }

 err = clk_prepare(mipi->clk);
 if (err < 0)
  return err;

 platform_set_drvdata(pdev, mipi);

 return 0;
}
