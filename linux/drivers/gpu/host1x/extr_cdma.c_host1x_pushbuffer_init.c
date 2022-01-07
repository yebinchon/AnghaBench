
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct push_buffer {int size; int fence; unsigned long alloc_size; int phys; int * mapped; int dma; scalar_t__ pos; } ;
struct iova {int dummy; } ;
struct host1x_cdma {int dummy; } ;
struct host1x {unsigned long iova_end; int dev; int iova; scalar_t__ domain; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HOST1X_PUSHBUFFER_SLOTS ;
 int IOMMU_READ ;
 int __free_iova (int *,struct iova*) ;
 struct iova* alloc_iova (int *,unsigned long,unsigned long,int) ;
 struct host1x* cdma_to_host1x (struct host1x_cdma*) ;
 void* dma_alloc_wc (int ,unsigned long,int *,int ) ;
 int dma_free_wc (int ,unsigned long,int *,int ) ;
 int host1x_hw_pushbuffer_init (struct host1x*,struct push_buffer*) ;
 int iommu_map (scalar_t__,int ,int ,unsigned long,int ) ;
 unsigned long iova_align (int *,unsigned long) ;
 int iova_dma_addr (int *,struct iova*) ;
 unsigned long iova_shift (int *) ;
 struct host1x_cdma* pb_to_cdma (struct push_buffer*) ;

__attribute__((used)) static int host1x_pushbuffer_init(struct push_buffer *pb)
{
 struct host1x_cdma *cdma = pb_to_cdma(pb);
 struct host1x *host1x = cdma_to_host1x(cdma);
 struct iova *alloc;
 u32 size;
 int err;

 pb->mapped = ((void*)0);
 pb->phys = 0;
 pb->size = HOST1X_PUSHBUFFER_SLOTS * 8;

 size = pb->size + 4;


 pb->fence = pb->size - 8;
 pb->pos = 0;

 if (host1x->domain) {
  unsigned long shift;

  size = iova_align(&host1x->iova, size);

  pb->mapped = dma_alloc_wc(host1x->dev, size, &pb->phys,
       GFP_KERNEL);
  if (!pb->mapped)
   return -ENOMEM;

  shift = iova_shift(&host1x->iova);
  alloc = alloc_iova(&host1x->iova, size >> shift,
       host1x->iova_end >> shift, 1);
  if (!alloc) {
   err = -ENOMEM;
   goto iommu_free_mem;
  }

  pb->dma = iova_dma_addr(&host1x->iova, alloc);
  err = iommu_map(host1x->domain, pb->dma, pb->phys, size,
    IOMMU_READ);
  if (err)
   goto iommu_free_iova;
 } else {
  pb->mapped = dma_alloc_wc(host1x->dev, size, &pb->phys,
       GFP_KERNEL);
  if (!pb->mapped)
   return -ENOMEM;

  pb->dma = pb->phys;
 }

 pb->alloc_size = size;

 host1x_hw_pushbuffer_init(host1x, pb);

 return 0;

iommu_free_iova:
 __free_iova(&host1x->iova, alloc);
iommu_free_mem:
 dma_free_wc(host1x->dev, size, pb->mapped, pb->phys);

 return err;
}
