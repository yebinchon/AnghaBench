
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int check_device (struct device*) ;
 int dma_direct_supported (struct device*,int ) ;

__attribute__((used)) static int amd_iommu_dma_supported(struct device *dev, u64 mask)
{
 if (!dma_direct_supported(dev, mask))
  return 0;
 return check_device(dev);
}
