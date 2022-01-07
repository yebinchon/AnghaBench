
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct push_buffer {int phys; int * mapped; int alloc_size; int dma; } ;
struct host1x_cdma {int dummy; } ;
struct host1x {int dev; int iova; scalar_t__ domain; } ;


 struct host1x* cdma_to_host1x (struct host1x_cdma*) ;
 int dma_free_wc (int ,int ,int *,int ) ;
 int free_iova (int *,int ) ;
 int iommu_unmap (scalar_t__,int ,int ) ;
 int iova_pfn (int *,int ) ;
 struct host1x_cdma* pb_to_cdma (struct push_buffer*) ;

__attribute__((used)) static void host1x_pushbuffer_destroy(struct push_buffer *pb)
{
 struct host1x_cdma *cdma = pb_to_cdma(pb);
 struct host1x *host1x = cdma_to_host1x(cdma);

 if (!pb->mapped)
  return;

 if (host1x->domain) {
  iommu_unmap(host1x->domain, pb->dma, pb->alloc_size);
  free_iova(&host1x->iova, iova_pfn(&host1x->iova, pb->dma));
 }

 dma_free_wc(host1x->dev, pb->alloc_size, pb->mapped, pb->phys);

 pb->mapped = ((void*)0);
 pb->phys = 0;
}
