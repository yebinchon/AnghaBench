
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {unsigned long spi_master_freq; int * base; int phys_base; } ;
struct dfsdm_priv {unsigned long spi_clk_out_div; TYPE_1__ dfsdm; int * clk; int * aclk; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 unsigned long clk_get_rate (int *) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_warn (TYPE_2__*,char*,...) ;
 void* devm_clk_get (TYPE_2__*,char*) ;
 int * devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 unsigned long div_u64_rem (unsigned long,unsigned int,unsigned int*) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int stm32_dfsdm_parse_of(struct platform_device *pdev,
    struct dfsdm_priv *priv)
{
 struct device_node *node = pdev->dev.of_node;
 struct resource *res;
 unsigned long clk_freq, divider;
 unsigned int spi_freq, rem;
 int ret;

 if (!node)
  return -EINVAL;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "Failed to get memory resource\n");
  return -ENODEV;
 }
 priv->dfsdm.phys_base = res->start;
 priv->dfsdm.base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->dfsdm.base))
  return PTR_ERR(priv->dfsdm.base);







 priv->clk = devm_clk_get(&pdev->dev, "dfsdm");
 if (IS_ERR(priv->clk)) {
  ret = PTR_ERR(priv->clk);
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Failed to get clock (%d)\n", ret);
  return ret;
 }

 priv->aclk = devm_clk_get(&pdev->dev, "audio");
 if (IS_ERR(priv->aclk))
  priv->aclk = ((void*)0);

 if (priv->aclk)
  clk_freq = clk_get_rate(priv->aclk);
 else
  clk_freq = clk_get_rate(priv->clk);


 ret = of_property_read_u32(pdev->dev.of_node, "spi-max-frequency",
       &spi_freq);
 if (ret < 0) {

  return 0;
 }

 divider = div_u64_rem(clk_freq, spi_freq, &rem);

 if (rem)
  divider++;


 if (divider < 2 || divider > 256) {
  dev_err(&pdev->dev, "spi-max-frequency not achievable\n");
  return -EINVAL;
 }


 priv->spi_clk_out_div = divider - 1;
 priv->dfsdm.spi_master_freq = clk_freq / (priv->spi_clk_out_div + 1);

 if (rem) {
  dev_warn(&pdev->dev, "SPI clock not accurate\n");
  dev_warn(&pdev->dev, "%ld = %d * %d + %d\n",
    clk_freq, spi_freq, priv->spi_clk_out_div + 1, rem);
 }

 return 0;
}
