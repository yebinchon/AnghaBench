
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_v2_cmq_ring {int desc_num; int * desc; scalar_t__ desc_dma_addr; } ;
struct hns_roce_dev {int dev; } ;
struct hns_roce_cmq_desc {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ dma_map_single (int ,int *,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int hns_roce_alloc_cmq_desc(struct hns_roce_dev *hr_dev,
       struct hns_roce_v2_cmq_ring *ring)
{
 int size = ring->desc_num * sizeof(struct hns_roce_cmq_desc);

 ring->desc = kzalloc(size, GFP_KERNEL);
 if (!ring->desc)
  return -ENOMEM;

 ring->desc_dma_addr = dma_map_single(hr_dev->dev, ring->desc, size,
          DMA_BIDIRECTIONAL);
 if (dma_mapping_error(hr_dev->dev, ring->desc_dma_addr)) {
  ring->desc_dma_addr = 0;
  kfree(ring->desc);
  ring->desc = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
