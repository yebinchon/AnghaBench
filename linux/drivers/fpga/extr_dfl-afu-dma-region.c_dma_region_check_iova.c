
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct dfl_afu_dma_region {scalar_t__ iova; scalar_t__ length; } ;



__attribute__((used)) static bool dma_region_check_iova(struct dfl_afu_dma_region *region,
      u64 iova, u64 size)
{
 if (!size && region->iova != iova)
  return 0;

 return (region->iova <= iova) &&
  (region->length + region->iova >= iova + size);
}
