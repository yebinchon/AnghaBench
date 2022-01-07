
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dma_length; int dma_address; } ;
struct acc_hw_sge {int len; int buf; } ;



__attribute__((used)) static void sg_map_to_hw_sg(struct scatterlist *sgl,
       struct acc_hw_sge *hw_sge)
{
 hw_sge->buf = sgl->dma_address;
 hw_sge->len = sgl->dma_length;
}
