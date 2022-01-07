
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mbigen_device {int base; struct platform_device* pdev; } ;


 scalar_t__ ACPI_COMPANION (TYPE_1__*) ;
 int CONFIG_OF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ENABLED (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_ioremap (TYPE_1__*,int ,int ) ;
 struct mbigen_device* devm_kzalloc (TYPE_1__*,int,int ) ;
 int mbigen_acpi_create_domain (struct platform_device*,struct mbigen_device*) ;
 int mbigen_of_create_domain (struct platform_device*,struct mbigen_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mbigen_device*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int mbigen_device_probe(struct platform_device *pdev)
{
 struct mbigen_device *mgn_chip;
 struct resource *res;
 int err;

 mgn_chip = devm_kzalloc(&pdev->dev, sizeof(*mgn_chip), GFP_KERNEL);
 if (!mgn_chip)
  return -ENOMEM;

 mgn_chip->pdev = pdev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -EINVAL;

 mgn_chip->base = devm_ioremap(&pdev->dev, res->start,
          resource_size(res));
 if (!mgn_chip->base) {
  dev_err(&pdev->dev, "failed to ioremap %pR\n", res);
  return -ENOMEM;
 }

 if (IS_ENABLED(CONFIG_OF) && pdev->dev.of_node)
  err = mbigen_of_create_domain(pdev, mgn_chip);
 else if (ACPI_COMPANION(&pdev->dev))
  err = mbigen_acpi_create_domain(pdev, mgn_chip);
 else
  err = -EINVAL;

 if (err) {
  dev_err(&pdev->dev, "Failed to create mbi-gen irqdomain\n");
  return err;
 }

 platform_set_drvdata(pdev, mgn_chip);
 return 0;
}
