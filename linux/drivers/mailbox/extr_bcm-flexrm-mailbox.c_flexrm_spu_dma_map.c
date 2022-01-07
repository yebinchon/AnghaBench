
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
 int dma_map_sg (struct device*,int ,int ,int ) ;
 int dma_unmap_sg (struct device*,int ,int ,int ) ;
 int sg_nents (int ) ;

__attribute__((used)) static int flexrm_spu_dma_map(struct device *dev, struct brcm_message *msg)
{
 int rc;

 rc = dma_map_sg(dev, msg->spu.src, sg_nents(msg->spu.src),
   DMA_TO_DEVICE);
 if (rc < 0)
  return rc;

 rc = dma_map_sg(dev, msg->spu.dst, sg_nents(msg->spu.dst),
   DMA_FROM_DEVICE);
 if (rc < 0) {
  dma_unmap_sg(dev, msg->spu.src, sg_nents(msg->spu.src),
        DMA_TO_DEVICE);
  return rc;
 }

 return 0;
}
