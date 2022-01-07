
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_v2_device {scalar_t__ dma_base; } ;


 scalar_t__ MV_XOR_V2_DMA_DESQ_ADD_OFF ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mv_xor_v2_add_desc_to_desq(struct mv_xor_v2_device *xor_dev,
           int num_of_desc)
{

 writel(num_of_desc, xor_dev->dma_base + MV_XOR_V2_DMA_DESQ_ADD_OFF);
}
