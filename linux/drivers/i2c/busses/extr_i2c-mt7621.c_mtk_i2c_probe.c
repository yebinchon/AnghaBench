
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_9__ {int of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int retries; int name; TYPE_1__ dev; int * algo; int owner; } ;
struct mtk_i2c {int bus_freq; struct i2c_adapter adap; TYPE_2__* dev; int clk; int base; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*,int) ;
 int dev_name (TYPE_2__*) ;
 int dev_warn (TYPE_2__*,char*) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct mtk_i2c* devm_kzalloc (TYPE_2__*,int,int ) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct mtk_i2c*) ;
 int mtk_i2c_algo ;
 int mtk_i2c_init (struct mtk_i2c*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_i2c*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int mtk_i2c_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct mtk_i2c *i2c;
 struct i2c_adapter *adap;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 i2c = devm_kzalloc(&pdev->dev, sizeof(struct mtk_i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 i2c->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(i2c->base))
  return PTR_ERR(i2c->base);

 i2c->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(i2c->clk)) {
  dev_err(&pdev->dev, "no clock defined\n");
  return PTR_ERR(i2c->clk);
 }
 ret = clk_prepare_enable(i2c->clk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable clock\n");
  return ret;
 }

 i2c->dev = &pdev->dev;

 if (of_property_read_u32(pdev->dev.of_node, "clock-frequency",
     &i2c->bus_freq))
  i2c->bus_freq = 100000;

 if (i2c->bus_freq == 0) {
  dev_warn(i2c->dev, "clock-frequency 0 not supported\n");
  return -EINVAL;
 }

 adap = &i2c->adap;
 adap->owner = THIS_MODULE;
 adap->algo = &mtk_i2c_algo;
 adap->retries = 3;
 adap->dev.parent = &pdev->dev;
 i2c_set_adapdata(adap, i2c);
 adap->dev.of_node = pdev->dev.of_node;
 strlcpy(adap->name, dev_name(&pdev->dev), sizeof(adap->name));

 platform_set_drvdata(pdev, i2c);

 mtk_i2c_init(i2c);

 ret = i2c_add_adapter(adap);
 if (ret < 0)
  return ret;

 dev_info(&pdev->dev, "clock %u kHz\n", i2c->bus_freq / 1000);

 return ret;
}
