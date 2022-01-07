
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_v2_cmq_ring {int desc_num; int desc; scalar_t__ desc_dma_addr; } ;
struct hns_roce_dev {int dev; } ;
struct hns_roce_cmq_desc {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_single (int ,scalar_t__,int,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void hns_roce_free_cmq_desc(struct hns_roce_dev *hr_dev,
       struct hns_roce_v2_cmq_ring *ring)
{
 dma_unmap_single(hr_dev->dev, ring->desc_dma_addr,
    ring->desc_num * sizeof(struct hns_roce_cmq_desc),
    DMA_BIDIRECTIONAL);

 ring->desc_dma_addr = 0;
 kfree(ring->desc);
}
