
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {scalar_t__ issued; scalar_t__ submitted; int issue_lock; } ;
struct dma_chan {int dummy; } ;


 int MIC_DMA_REG_DHPR ;
 int mic_dma_write_reg (struct mic_dma_chan*,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mic_dma_chan* to_mic_dma_chan (struct dma_chan*) ;
 int wmb () ;

__attribute__((used)) static inline void mic_dma_issue_pending(struct dma_chan *ch)
{
 struct mic_dma_chan *mic_ch = to_mic_dma_chan(ch);

 spin_lock(&mic_ch->issue_lock);






 if (mic_ch->issued == mic_ch->submitted)
  goto out;
 mic_ch->issued = mic_ch->submitted;





 wmb();
 mic_dma_write_reg(mic_ch, MIC_DMA_REG_DHPR, mic_ch->issued);
out:
 spin_unlock(&mic_ch->issue_lock);
}
