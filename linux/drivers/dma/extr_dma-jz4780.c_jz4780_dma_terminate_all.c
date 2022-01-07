
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct jz4780_dma_dev {int dummy; } ;
struct TYPE_5__ {int lock; } ;
struct jz4780_dma_chan {TYPE_2__ vchan; int id; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int vdesc; } ;


 int JZ_DMA_REG_DCS ;
 int LIST_HEAD (int ) ;
 int head ;
 int jz4780_dma_chan_disable (struct jz4780_dma_dev*,int ) ;
 struct jz4780_dma_dev* jz4780_dma_chan_parent (struct jz4780_dma_chan*) ;
 int jz4780_dma_chn_writel (struct jz4780_dma_dev*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;
 int vchan_terminate_vdesc (int *) ;

__attribute__((used)) static int jz4780_dma_terminate_all(struct dma_chan *chan)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);
 struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&jzchan->vchan.lock, flags);


 jz4780_dma_chn_writel(jzdma, jzchan->id, JZ_DMA_REG_DCS, 0);
 if (jzchan->desc) {
  vchan_terminate_vdesc(&jzchan->desc->vdesc);
  jzchan->desc = ((void*)0);
 }

 jz4780_dma_chan_disable(jzdma, jzchan->id);

 vchan_get_all_descriptors(&jzchan->vchan, &head);

 spin_unlock_irqrestore(&jzchan->vchan.lock, flags);

 vchan_dma_desc_free_list(&jzchan->vchan, &head);
 return 0;
}
