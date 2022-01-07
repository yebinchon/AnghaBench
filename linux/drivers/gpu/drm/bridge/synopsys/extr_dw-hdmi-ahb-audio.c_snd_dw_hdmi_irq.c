
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct snd_dw_hdmi {int lock; struct snd_pcm_substream* substream; TYPE_1__ data; } ;
typedef int irqreturn_t ;


 scalar_t__ HDMI_IH_AHBDMAAUD_STAT0 ;
 unsigned int HDMI_IH_AHBDMAAUD_STAT0_DONE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dw_hdmi_start_dma (struct snd_dw_hdmi*) ;
 unsigned int readb_relaxed (scalar_t__) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeb_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static irqreturn_t snd_dw_hdmi_irq(int irq, void *data)
{
 struct snd_dw_hdmi *dw = data;
 struct snd_pcm_substream *substream;
 unsigned stat;

 stat = readb_relaxed(dw->data.base + HDMI_IH_AHBDMAAUD_STAT0);
 if (!stat)
  return IRQ_NONE;

 writeb_relaxed(stat, dw->data.base + HDMI_IH_AHBDMAAUD_STAT0);

 substream = dw->substream;
 if (stat & HDMI_IH_AHBDMAAUD_STAT0_DONE && substream) {
  snd_pcm_period_elapsed(substream);

  spin_lock(&dw->lock);
  if (dw->substream)
   dw_hdmi_start_dma(dw);
  spin_unlock(&dw->lock);
 }

 return IRQ_HANDLED;
}
