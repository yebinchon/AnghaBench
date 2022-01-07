
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct ipu_pre {int list; struct device* dev; int clk_axi; int buffer_virt; int buffer_paddr; int iram; int regs; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IPU_PRE_MAX_WIDTH ;
 int IPU_PRE_NUM_SCANLINES ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int available_pres ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct ipu_pre* devm_kzalloc (struct device*,int,int ) ;
 int gen_pool_dma_alloc (int ,int,int *) ;
 int ipu_pre_list ;
 int ipu_pre_list_mutex ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_gen_pool_get (int ,char*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ipu_pre*) ;

__attribute__((used)) static int ipu_pre_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct ipu_pre *pre;

 pre = devm_kzalloc(dev, sizeof(*pre), GFP_KERNEL);
 if (!pre)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pre->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pre->regs))
  return PTR_ERR(pre->regs);

 pre->clk_axi = devm_clk_get(dev, "axi");
 if (IS_ERR(pre->clk_axi))
  return PTR_ERR(pre->clk_axi);

 pre->iram = of_gen_pool_get(dev->of_node, "fsl,iram", 0);
 if (!pre->iram)
  return -EPROBE_DEFER;






 pre->buffer_virt = gen_pool_dma_alloc(pre->iram, IPU_PRE_MAX_WIDTH *
           IPU_PRE_NUM_SCANLINES * 4,
           &pre->buffer_paddr);
 if (!pre->buffer_virt)
  return -ENOMEM;

 clk_prepare_enable(pre->clk_axi);

 pre->dev = dev;
 platform_set_drvdata(pdev, pre);
 mutex_lock(&ipu_pre_list_mutex);
 list_add(&pre->list, &ipu_pre_list);
 available_pres++;
 mutex_unlock(&ipu_pre_list_mutex);

 return 0;
}
