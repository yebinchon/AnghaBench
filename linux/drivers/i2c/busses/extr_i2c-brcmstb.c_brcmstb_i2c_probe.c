
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct resource {int dummy; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {char const* name; TYPE_2__ dev; } ;
struct TYPE_9__ {int of_node; TYPE_2__* parent; } ;
struct i2c_adapter {TYPE_1__ dev; int * algo; int name; int owner; } ;
struct brcmstb_i2c_dev {int irq; int data_regsz; int clk_freq_hz; TYPE_2__* device; struct i2c_adapter adapter; int base; int done; void* bsc_regmap; } ;
struct TYPE_11__ {int hz; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_DISABLE ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int THIS_MODULE ;
 int brcmstb_i2c_algo ;
 int brcmstb_i2c_enable_disable_irq (struct brcmstb_i2c_dev*,int ) ;
 int brcmstb_i2c_isr ;
 int brcmstb_i2c_set_bsc_reg_defaults (struct brcmstb_i2c_dev*) ;
 TYPE_8__* bsc_clk ;
 int dev_dbg (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*,char const*,int ,char*) ;
 int dev_warn (TYPE_2__*,char*,int ) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 void* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,char const*,struct brcmstb_i2c_dev*) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct brcmstb_i2c_dev*) ;
 int init_completion (int *) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 int of_property_read_string (int ,char*,char const**) ;
 scalar_t__ of_property_read_u32 (int ,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct brcmstb_i2c_dev*) ;
 int strlcat (int ,char const*,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int brcmstb_i2c_probe(struct platform_device *pdev)
{
 int rc = 0;
 struct brcmstb_i2c_dev *dev;
 struct i2c_adapter *adap;
 struct resource *iomem;
 const char *int_name;


 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 dev->bsc_regmap = devm_kzalloc(&pdev->dev, sizeof(*dev->bsc_regmap), GFP_KERNEL);
 if (!dev->bsc_regmap)
  return -ENOMEM;

 platform_set_drvdata(pdev, dev);
 dev->device = &pdev->dev;
 init_completion(&dev->done);


 iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dev->base = devm_ioremap_resource(dev->device, iomem);
 if (IS_ERR(dev->base)) {
  rc = -ENOMEM;
  goto probe_errorout;
 }

 rc = of_property_read_string(dev->device->of_node, "interrupt-names",
         &int_name);
 if (rc < 0)
  int_name = ((void*)0);


 dev->irq = platform_get_irq(pdev, 0);


 brcmstb_i2c_enable_disable_irq(dev, INT_DISABLE);


 rc = devm_request_irq(&pdev->dev, dev->irq, brcmstb_i2c_isr,
         IRQF_SHARED,
         int_name ? int_name : pdev->name,
         dev);

 if (rc) {
  dev_dbg(dev->device, "falling back to polling mode");
  dev->irq = -1;
 }

 if (of_property_read_u32(dev->device->of_node,
     "clock-frequency", &dev->clk_freq_hz)) {
  dev_warn(dev->device, "setting clock-frequency@%dHz\n",
    bsc_clk[0].hz);
  dev->clk_freq_hz = bsc_clk[0].hz;
 }


 if (of_device_is_compatible(dev->device->of_node,
        "brcmstb,brcmper-i2c"))
  dev->data_regsz = sizeof(u8);
 else
  dev->data_regsz = sizeof(u32);

 brcmstb_i2c_set_bsc_reg_defaults(dev);


 adap = &dev->adapter;
 i2c_set_adapdata(adap, dev);
 adap->owner = THIS_MODULE;
 strlcpy(adap->name, "Broadcom STB : ", sizeof(adap->name));
 if (int_name)
  strlcat(adap->name, int_name, sizeof(adap->name));
 adap->algo = &brcmstb_i2c_algo;
 adap->dev.parent = &pdev->dev;
 adap->dev.of_node = pdev->dev.of_node;
 rc = i2c_add_adapter(adap);
 if (rc)
  goto probe_errorout;

 dev_info(dev->device, "%s@%dhz registered in %s mode\n",
   int_name ? int_name : " ", dev->clk_freq_hz,
   (dev->irq >= 0) ? "interrupt" : "polling");

 return 0;

probe_errorout:
 return rc;
}
