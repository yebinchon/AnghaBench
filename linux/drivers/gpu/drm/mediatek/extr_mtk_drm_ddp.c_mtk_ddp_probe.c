
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_ddp {int mutex_mod; int regs; int clk; TYPE_1__* mutex; } ;
struct TYPE_2__ {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct mtk_ddp* devm_kzalloc (struct device*,int,int ) ;
 int of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_ddp*) ;

__attribute__((used)) static int mtk_ddp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_ddp *ddp;
 struct resource *regs;
 int i;

 ddp = devm_kzalloc(dev, sizeof(*ddp), GFP_KERNEL);
 if (!ddp)
  return -ENOMEM;

 for (i = 0; i < 10; i++)
  ddp->mutex[i].id = i;

 ddp->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(ddp->clk)) {
  dev_err(dev, "Failed to get clock\n");
  return PTR_ERR(ddp->clk);
 }

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ddp->regs = devm_ioremap_resource(dev, regs);
 if (IS_ERR(ddp->regs)) {
  dev_err(dev, "Failed to map mutex registers\n");
  return PTR_ERR(ddp->regs);
 }

 ddp->mutex_mod = of_device_get_match_data(dev);

 platform_set_drvdata(pdev, ddp);

 return 0;
}
