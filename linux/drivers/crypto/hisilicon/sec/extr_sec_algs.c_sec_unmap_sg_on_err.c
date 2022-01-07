
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** scatterlist ;
struct device {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_sg (struct device*,int *****,int,int ) ;
 int kfree (int*) ;

__attribute__((used)) static void sec_unmap_sg_on_err(struct scatterlist *sgl, int steps,
    struct scatterlist **splits, int *splits_nents,
    int sgl_len_in, struct device *dev)
{
 int i;

 for (i = 0; i < steps; i++)
  kfree(splits[i]);
 kfree(splits_nents);
 kfree(splits);

 dma_unmap_sg(dev, sgl, sgl_len_in, DMA_BIDIRECTIONAL);
}
