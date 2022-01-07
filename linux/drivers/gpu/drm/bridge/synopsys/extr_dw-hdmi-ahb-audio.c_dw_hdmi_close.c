
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_dw_hdmi* private_data; } ;
struct TYPE_2__ {int irq; scalar_t__ base; } ;
struct snd_dw_hdmi {TYPE_1__ data; } ;


 scalar_t__ HDMI_IH_MUTE_AHBDMAAUD_STAT0 ;
 int HDMI_IH_MUTE_AHBDMAAUD_STAT0_ALL ;
 int free_irq (int ,struct snd_dw_hdmi*) ;
 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int dw_hdmi_close(struct snd_pcm_substream *substream)
{
 struct snd_dw_hdmi *dw = substream->private_data;


 writeb_relaxed(HDMI_IH_MUTE_AHBDMAAUD_STAT0_ALL,
         dw->data.base + HDMI_IH_MUTE_AHBDMAAUD_STAT0);

 free_irq(dw->data.irq, dw);

 return 0;
}
