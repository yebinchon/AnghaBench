
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int DRM_ERROR (char*,char const*) ;
 int IORESOURCE_MEM ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char const*) ;
 unsigned long resource_size (struct resource*) ;

__attribute__((used)) static unsigned long dpu_iomap_size(struct platform_device *pdev,
        const char *name)
{
 struct resource *res;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, name);
 if (!res) {
  DRM_ERROR("failed to get memory resource: %s\n", name);
  return 0;
 }

 return resource_size(res);
}
