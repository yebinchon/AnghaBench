
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dev_info {int dev; int * regs; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 int SEC_NUM_ADDR_REGIONS ;
 int dev_err (int ,char*,int) ;
 int devm_ioremap (int ,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int sec_map_io(struct sec_dev_info *info, struct platform_device *pdev)
{
 struct resource *res;
 int i;

 for (i = 0; i < SEC_NUM_ADDR_REGIONS; i++) {
  res = platform_get_resource(pdev, IORESOURCE_MEM, i);

  if (!res) {
   dev_err(info->dev, "Memory resource %d not found\n", i);
   return -EINVAL;
  }

  info->regs[i] = devm_ioremap(info->dev, res->start,
          resource_size(res));
  if (!info->regs[i]) {
   dev_err(info->dev,
    "Memory resource %d could not be remapped\n",
    i);
   return -EINVAL;
  }
 }

 return 0;
}
