
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct hisi_acc_hw_sgl {scalar_t__ entry_length_in_sgl; scalar_t__ entry_sum_in_sgl; scalar_t__ entry_sum_in_chain; } ;
struct device {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_sg (struct device*,struct scatterlist*,int ,int ) ;
 int sg_nents (struct scatterlist*) ;

void hisi_acc_sg_buf_unmap(struct device *dev, struct scatterlist *sgl,
      struct hisi_acc_hw_sgl *hw_sgl)
{
 dma_unmap_sg(dev, sgl, sg_nents(sgl), DMA_BIDIRECTIONAL);

 hw_sgl->entry_sum_in_chain = 0;
 hw_sgl->entry_sum_in_sgl = 0;
 hw_sgl->entry_length_in_sgl = 0;
}
