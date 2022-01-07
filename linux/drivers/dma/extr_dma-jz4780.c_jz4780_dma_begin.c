
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ callback; } ;
struct virt_dma_desc {TYPE_1__ tx; int node; } ;
struct jz4780_dma_dev {int dummy; } ;
struct jz4780_dma_chan {int curr_hwdesc; int id; TYPE_3__* desc; scalar_t__ transfer_type; int vchan; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {scalar_t__ type; unsigned int count; scalar_t__ desc_phys; TYPE_2__* desc; } ;
struct TYPE_5__ {scalar_t__ dtc; int dcm; } ;


 int BIT (int ) ;
 scalar_t__ DMA_CYCLIC ;
 int JZ_DMA_DCM_LINK ;
 scalar_t__ JZ_DMA_DCS_CTE ;
 int JZ_DMA_REG_DCS ;
 int JZ_DMA_REG_DDA ;
 int JZ_DMA_REG_DDRS ;
 int JZ_DMA_REG_DRT ;
 int JZ_DMA_REG_DTC ;
 int jz4780_dma_chan_enable (struct jz4780_dma_dev*,int ) ;
 struct jz4780_dma_dev* jz4780_dma_chan_parent (struct jz4780_dma_chan*) ;
 int jz4780_dma_chn_writel (struct jz4780_dma_dev*,int ,int ,scalar_t__) ;
 int jz4780_dma_ctrl_writel (struct jz4780_dma_dev*,int ,int ) ;
 int list_del (int *) ;
 TYPE_3__* to_jz4780_dma_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void jz4780_dma_begin(struct jz4780_dma_chan *jzchan)
{
 struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);
 struct virt_dma_desc *vdesc;
 unsigned int i;
 dma_addr_t desc_phys;

 if (!jzchan->desc) {
  vdesc = vchan_next_desc(&jzchan->vchan);
  if (!vdesc)
   return;

  list_del(&vdesc->node);

  jzchan->desc = to_jz4780_dma_desc(vdesc);
  jzchan->curr_hwdesc = 0;

  if (jzchan->desc->type == DMA_CYCLIC && vdesc->tx.callback) {
   for (i = 0; i < jzchan->desc->count; i++)
    jzchan->desc->desc[i].dcm &= ~JZ_DMA_DCM_LINK;
  }
 } else {





  jzchan->curr_hwdesc =
   (jzchan->curr_hwdesc + 1) % jzchan->desc->count;
 }


 jz4780_dma_chan_enable(jzdma, jzchan->id);


 jz4780_dma_chn_writel(jzdma, jzchan->id, JZ_DMA_REG_DCS, 0);


 jz4780_dma_chn_writel(jzdma, jzchan->id, JZ_DMA_REG_DRT,
         jzchan->transfer_type);







 jz4780_dma_chn_writel(jzdma, jzchan->id, JZ_DMA_REG_DTC,
    jzchan->desc->desc[jzchan->curr_hwdesc].dtc);


 desc_phys = jzchan->desc->desc_phys +
      (jzchan->curr_hwdesc * sizeof(*jzchan->desc->desc));
 jz4780_dma_chn_writel(jzdma, jzchan->id, JZ_DMA_REG_DDA, desc_phys);
 jz4780_dma_ctrl_writel(jzdma, JZ_DMA_REG_DDRS, BIT(jzchan->id));


 jz4780_dma_chn_writel(jzdma, jzchan->id, JZ_DMA_REG_DCS,
         JZ_DMA_DCS_CTE);
}
