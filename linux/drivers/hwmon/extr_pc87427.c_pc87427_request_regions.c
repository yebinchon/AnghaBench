
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ end; scalar_t__ start; } ;
struct platform_device {int dev; } ;


 int DRVNAME ;
 int EBUSY ;
 int ENOENT ;
 int IORESOURCE_IO ;
 int dev_err (int *,char*,unsigned long,...) ;
 int devm_request_region (int *,scalar_t__,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int pc87427_request_regions(struct platform_device *pdev,
          int count)
{
 struct resource *res;
 int i;

 for (i = 0; i < count; i++) {
  res = platform_get_resource(pdev, IORESOURCE_IO, i);
  if (!res) {
   dev_err(&pdev->dev, "Missing resource #%d\n", i);
   return -ENOENT;
  }
  if (!devm_request_region(&pdev->dev, res->start,
      resource_size(res), DRVNAME)) {
   dev_err(&pdev->dev,
    "Failed to request region 0x%lx-0x%lx\n",
    (unsigned long)res->start,
    (unsigned long)res->end);
   return -EBUSY;
  }
 }
 return 0;
}
