
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ caam_dpaa2 ;
 int caam_ptr_sz ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;

__attribute__((used)) static inline u64 caam_get_dma_mask(struct device *dev)
{
 struct device_node *nprop = dev->of_node;

 if (caam_ptr_sz != sizeof(u64))
  return DMA_BIT_MASK(32);

 if (caam_dpaa2)
  return DMA_BIT_MASK(49);

 if (of_device_is_compatible(nprop, "fsl,sec-v5.0-job-ring") ||
     of_device_is_compatible(nprop, "fsl,sec-v5.0"))
  return DMA_BIT_MASK(40);

 return DMA_BIT_MASK(36);
}
