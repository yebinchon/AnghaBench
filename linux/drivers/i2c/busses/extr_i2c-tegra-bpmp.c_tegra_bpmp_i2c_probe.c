
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int of_node; TYPE_4__* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; int * algo; int name; int owner; } ;
struct tegra_bpmp_i2c {TYPE_2__ adapter; int bus; int bpmp; TYPE_4__* dev; } ;
struct TYPE_7__ {int of_node; int parent; } ;
struct platform_device {TYPE_4__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_get_drvdata (int ) ;
 struct tegra_bpmp_i2c* devm_kzalloc (TYPE_4__*,int,int ) ;
 int i2c_add_adapter (TYPE_2__*) ;
 int i2c_set_adapdata (TYPE_2__*,struct tegra_bpmp_i2c*) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_bpmp_i2c*) ;
 int strlcpy (int ,char*,int) ;
 int tegra_bpmp_i2c_algo ;

__attribute__((used)) static int tegra_bpmp_i2c_probe(struct platform_device *pdev)
{
 struct tegra_bpmp_i2c *i2c;
 u32 value;
 int err;

 i2c = devm_kzalloc(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 i2c->dev = &pdev->dev;

 i2c->bpmp = dev_get_drvdata(pdev->dev.parent);
 if (!i2c->bpmp)
  return -ENODEV;

 err = of_property_read_u32(pdev->dev.of_node, "nvidia,bpmp-bus-id",
       &value);
 if (err < 0)
  return err;

 i2c->bus = value;

 i2c_set_adapdata(&i2c->adapter, i2c);
 i2c->adapter.owner = THIS_MODULE;
 strlcpy(i2c->adapter.name, "Tegra BPMP I2C adapter",
  sizeof(i2c->adapter.name));
 i2c->adapter.algo = &tegra_bpmp_i2c_algo;
 i2c->adapter.dev.parent = &pdev->dev;
 i2c->adapter.dev.of_node = pdev->dev.of_node;

 platform_set_drvdata(pdev, i2c);

 return i2c_add_adapter(&i2c->adapter);
}
