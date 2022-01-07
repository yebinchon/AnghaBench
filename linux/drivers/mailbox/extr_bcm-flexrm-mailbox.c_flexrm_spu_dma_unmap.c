
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int src; int dst; } ;
struct brcm_message {TYPE_1__ spu; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int dma_unmap_sg (struct device*,int ,int ,int ) ;
 int sg_nents (int ) ;

__attribute__((used)) static void flexrm_spu_dma_unmap(struct device *dev, struct brcm_message *msg)
{
 dma_unmap_sg(dev, msg->spu.dst, sg_nents(msg->spu.dst),
       DMA_FROM_DEVICE);
 dma_unmap_sg(dev, msg->spu.src, sg_nents(msg->spu.src),
       DMA_TO_DEVICE);
}
