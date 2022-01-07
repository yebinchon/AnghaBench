
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_desc {int node; } ;
struct sprd_dma_chn {scalar_t__ chn_mode; scalar_t__ dev_id; int cur_desc; int vc; } ;


 scalar_t__ SPRD_DMA_DST_CHN0 ;
 scalar_t__ SPRD_DMA_DST_CHN1 ;
 scalar_t__ SPRD_DMA_SOFTWARE_UID ;
 int list_del (int *) ;
 int sprd_dma_enable_chn (struct sprd_dma_chn*) ;
 scalar_t__ sprd_dma_set_2stage_config (struct sprd_dma_chn*) ;
 int sprd_dma_set_chn_config (struct sprd_dma_chn*,int ) ;
 int sprd_dma_set_uid (struct sprd_dma_chn*) ;
 int sprd_dma_soft_request (struct sprd_dma_chn*) ;
 int to_sprd_dma_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void sprd_dma_start(struct sprd_dma_chn *schan)
{
 struct virt_dma_desc *vd = vchan_next_desc(&schan->vc);

 if (!vd)
  return;

 list_del(&vd->node);
 schan->cur_desc = to_sprd_dma_desc(vd);





 if (schan->chn_mode && sprd_dma_set_2stage_config(schan))
  return;





 sprd_dma_set_chn_config(schan, schan->cur_desc);
 sprd_dma_set_uid(schan);
 sprd_dma_enable_chn(schan);

 if (schan->dev_id == SPRD_DMA_SOFTWARE_UID &&
     schan->chn_mode != SPRD_DMA_DST_CHN0 &&
     schan->chn_mode != SPRD_DMA_DST_CHN1)
  sprd_dma_soft_request(schan);
}
