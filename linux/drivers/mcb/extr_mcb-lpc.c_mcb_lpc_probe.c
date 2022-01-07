
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct priv {int bus; int base; TYPE_1__* mem; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int start; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int KBUILD_MODNAME ;
 int PTR_ERR (int ) ;
 int chameleon_parse_cells (int ,int ,int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 int devm_ioremap (int *,int ,int ) ;
 struct priv* devm_kzalloc (int *,int,int ) ;
 struct resource* devm_request_mem_region (int *,int ,int ,int ) ;
 int mcb_alloc_bus (int *) ;
 int mcb_bus_add_devices (int ) ;
 int mcb_release_bus (int ) ;
 TYPE_1__* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct priv*) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static int mcb_lpc_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct priv *priv;
 int ret = 0;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!priv->mem) {
  dev_err(&pdev->dev, "No Memory resource\n");
  return -ENODEV;
 }

 res = devm_request_mem_region(&pdev->dev, priv->mem->start,
          resource_size(priv->mem),
          KBUILD_MODNAME);
 if (!res) {
  dev_err(&pdev->dev, "Failed to request IO memory\n");
  return -EBUSY;
 }

 priv->base = devm_ioremap(&pdev->dev, priv->mem->start,
      resource_size(priv->mem));
 if (!priv->base) {
  dev_err(&pdev->dev, "Cannot ioremap\n");
  return -ENOMEM;
 }

 platform_set_drvdata(pdev, priv);

 priv->bus = mcb_alloc_bus(&pdev->dev);
 if (IS_ERR(priv->bus))
  return PTR_ERR(priv->bus);

 ret = chameleon_parse_cells(priv->bus, priv->mem->start, priv->base);
 if (ret < 0) {
  mcb_release_bus(priv->bus);
  return ret;
 }

 dev_dbg(&pdev->dev, "Found %d cells\n", ret);

 mcb_bus_add_devices(priv->bus);

 return 0;

}
