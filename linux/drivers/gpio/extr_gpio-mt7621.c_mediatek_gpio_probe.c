
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk {struct device* dev; int gpio_irq; int base; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MTK_BANK_CNT ;
 int PTR_ERR (int ) ;
 struct mtk* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int mediatek_gpio_bank_probe (struct device*,struct device_node*,int) ;
 int platform_set_drvdata (struct platform_device*,struct mtk*) ;

__attribute__((used)) static int
mediatek_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct mtk *mtk;
 int i;
 int ret;

 mtk = devm_kzalloc(dev, sizeof(*mtk), GFP_KERNEL);
 if (!mtk)
  return -ENOMEM;

 mtk->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(mtk->base))
  return PTR_ERR(mtk->base);

 mtk->gpio_irq = irq_of_parse_and_map(np, 0);
 mtk->dev = dev;
 platform_set_drvdata(pdev, mtk);

 for (i = 0; i < MTK_BANK_CNT; i++) {
  ret = mediatek_gpio_bank_probe(dev, np, i);
  if (ret)
   return ret;
 }

 return 0;
}
