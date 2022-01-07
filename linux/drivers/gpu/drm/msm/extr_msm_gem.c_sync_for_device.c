
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dev; } ;
struct msm_gem_object {TYPE_3__* sgt; TYPE_2__ base; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int nents; int sgl; } ;
struct TYPE_4__ {struct device* dev; } ;


 int CONFIG_ARM64 ;
 int DMA_BIDIRECTIONAL ;
 scalar_t__ IS_ENABLED (int ) ;
 int dma_map_sg (struct device*,int ,int ,int ) ;
 int dma_sync_sg_for_device (struct device*,int ,int ,int ) ;
 scalar_t__ get_dma_ops (struct device*) ;

__attribute__((used)) static void sync_for_device(struct msm_gem_object *msm_obj)
{
 struct device *dev = msm_obj->base.dev->dev;

 if (get_dma_ops(dev) && IS_ENABLED(CONFIG_ARM64)) {
  dma_sync_sg_for_device(dev, msm_obj->sgt->sgl,
   msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
 } else {
  dma_map_sg(dev, msm_obj->sgt->sgl,
   msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
 }
}
