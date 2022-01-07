
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; struct snd_dw_hdmi* private_data; } ;
struct TYPE_4__ {int hdmi; } ;
struct snd_dw_hdmi {int lock; TYPE_2__ data; struct snd_pcm_substream* substream; int buf_offset; } ;
struct TYPE_3__ {int period_size; int delay; } ;


 int EINVAL ;


 int dw_hdmi_audio_disable (int ) ;
 int dw_hdmi_audio_enable (int ) ;
 int dw_hdmi_start_dma (struct snd_dw_hdmi*) ;
 int dw_hdmi_stop_dma (struct snd_dw_hdmi*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dw_hdmi_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_dw_hdmi *dw = substream->private_data;
 unsigned long flags;
 int ret = 0;

 switch (cmd) {
 case 129:
  spin_lock_irqsave(&dw->lock, flags);
  dw->buf_offset = 0;
  dw->substream = substream;
  dw_hdmi_start_dma(dw);
  dw_hdmi_audio_enable(dw->data.hdmi);
  spin_unlock_irqrestore(&dw->lock, flags);
  substream->runtime->delay = substream->runtime->period_size;
  break;

 case 128:
  spin_lock_irqsave(&dw->lock, flags);
  dw->substream = ((void*)0);
  dw_hdmi_stop_dma(dw);
  dw_hdmi_audio_disable(dw->data.hdmi);
  spin_unlock_irqrestore(&dw->lock, flags);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
