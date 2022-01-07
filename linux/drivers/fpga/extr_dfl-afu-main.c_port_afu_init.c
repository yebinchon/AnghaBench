
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; struct resource* resource; } ;
struct dfl_feature {size_t resource_index; } ;


 int DFL_PORT_REGION_INDEX_AFU ;
 int DFL_PORT_REGION_MMAP ;
 int DFL_PORT_REGION_READ ;
 int DFL_PORT_REGION_WRITE ;
 int afu_mmio_region_add (int ,int ,int ,int ,int) ;
 int dev_get_platdata (int *) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int port_afu_init(struct platform_device *pdev,
    struct dfl_feature *feature)
{
 struct resource *res = &pdev->resource[feature->resource_index];

 return afu_mmio_region_add(dev_get_platdata(&pdev->dev),
       DFL_PORT_REGION_INDEX_AFU,
       resource_size(res), res->start,
       DFL_PORT_REGION_MMAP | DFL_PORT_REGION_READ |
       DFL_PORT_REGION_WRITE);
}
