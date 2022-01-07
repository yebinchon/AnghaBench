
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_v2_device {scalar_t__ dma_base; } ;


 int MV_XOR_V2_DMA_DESQ_CTRL_128B ;
 scalar_t__ MV_XOR_V2_DMA_DESQ_CTRL_OFF ;
 int MV_XOR_V2_EXT_DESC_SIZE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mv_xor_v2_set_desc_size(struct mv_xor_v2_device *xor_dev)
{
 writel(MV_XOR_V2_DMA_DESQ_CTRL_128B,
        xor_dev->dma_base + MV_XOR_V2_DMA_DESQ_CTRL_OFF);

 return MV_XOR_V2_EXT_DESC_SIZE;
}
