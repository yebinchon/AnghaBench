
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct scx200_acb_iface {TYPE_1__ adapter; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int EIO ;
 int ENODEV ;
 int IORESOURCE_IO ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct scx200_acb_iface*) ;
 struct scx200_acb_iface* scx200_create_dev (char*,int ,int ,int *) ;

__attribute__((used)) static int scx200_probe(struct platform_device *pdev)
{
 struct scx200_acb_iface *iface;
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!res) {
  dev_err(&pdev->dev, "can't fetch device resource info\n");
  return -ENODEV;
 }

 iface = scx200_create_dev("CS5535", res->start, 0, &pdev->dev);
 if (!iface)
  return -EIO;

 dev_info(&pdev->dev, "SCx200 device '%s' registered\n",
   iface->adapter.name);
 platform_set_drvdata(pdev, iface);

 return 0;
}
