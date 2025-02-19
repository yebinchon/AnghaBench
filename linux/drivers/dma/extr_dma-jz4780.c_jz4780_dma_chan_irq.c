
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct jz4780_dma_dev {TYPE_1__* soc_data; } ;
struct jz4780_dma_desc {int status; scalar_t__ type; scalar_t__ count; int vdesc; } ;
struct TYPE_7__ {TYPE_2__* dev; } ;
struct TYPE_8__ {int lock; TYPE_3__ chan; } ;
struct jz4780_dma_chan {scalar_t__ curr_hwdesc; TYPE_4__ vchan; int id; struct jz4780_dma_desc* desc; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_5__ {unsigned int flags; } ;


 scalar_t__ DMA_CYCLIC ;
 int JZ_DMA_DCS_AR ;
 int JZ_DMA_DCS_CTE ;
 int JZ_DMA_DCS_HLT ;
 int JZ_DMA_DCS_TT ;
 int JZ_DMA_REG_DCS ;
 unsigned int const JZ_SOC_DATA_BREAK_LINKS ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int jz4780_dma_begin (struct jz4780_dma_chan*) ;
 int jz4780_dma_chn_readl (struct jz4780_dma_dev*,int ,int ) ;
 int jz4780_dma_chn_writel (struct jz4780_dma_dev*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchan_cookie_complete (int *) ;
 int vchan_cyclic_callback (int *) ;

__attribute__((used)) static bool jz4780_dma_chan_irq(struct jz4780_dma_dev *jzdma,
    struct jz4780_dma_chan *jzchan)
{
 const unsigned int soc_flags = jzdma->soc_data->flags;
 struct jz4780_dma_desc *desc = jzchan->desc;
 uint32_t dcs;
 bool ack = 1;

 spin_lock(&jzchan->vchan.lock);

 dcs = jz4780_dma_chn_readl(jzdma, jzchan->id, JZ_DMA_REG_DCS);
 jz4780_dma_chn_writel(jzdma, jzchan->id, JZ_DMA_REG_DCS, 0);

 if (dcs & JZ_DMA_DCS_AR) {
  dev_warn(&jzchan->vchan.chan.dev->device,
    "address error (DCS=0x%x)\n", dcs);
 }

 if (dcs & JZ_DMA_DCS_HLT) {
  dev_warn(&jzchan->vchan.chan.dev->device,
    "channel halt (DCS=0x%x)\n", dcs);
 }

 if (jzchan->desc) {
  jzchan->desc->status = dcs;

  if ((dcs & (JZ_DMA_DCS_AR | JZ_DMA_DCS_HLT)) == 0) {
   if (jzchan->desc->type == DMA_CYCLIC) {
    vchan_cyclic_callback(&jzchan->desc->vdesc);

    jz4780_dma_begin(jzchan);
   } else if (dcs & JZ_DMA_DCS_TT) {
    if (!(soc_flags & JZ_SOC_DATA_BREAK_LINKS) ||
        (jzchan->curr_hwdesc + 1 == desc->count)) {
     vchan_cookie_complete(&desc->vdesc);
     jzchan->desc = ((void*)0);
    }

    jz4780_dma_begin(jzchan);
   } else {

    ack = 0;
    jz4780_dma_chn_writel(jzdma, jzchan->id,
            JZ_DMA_REG_DCS,
            JZ_DMA_DCS_CTE);
   }
  }
 } else {
  dev_err(&jzchan->vchan.chan.dev->device,
   "channel IRQ with no active transfer\n");
 }

 spin_unlock(&jzchan->vchan.lock);

 return ack;
}
