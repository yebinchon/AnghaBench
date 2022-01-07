
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;
struct snd_dw_hdmi {TYPE_1__ data; } ;


 scalar_t__ HDMI_AHB_DMA_MASK ;
 scalar_t__ HDMI_AHB_DMA_STOP ;
 int HDMI_AHB_DMA_STOP_STOP ;
 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void dw_hdmi_stop_dma(struct snd_dw_hdmi *dw)
{

 writeb_relaxed(~0, dw->data.base + HDMI_AHB_DMA_MASK);
 writeb_relaxed(HDMI_AHB_DMA_STOP_STOP, dw->data.base + HDMI_AHB_DMA_STOP);
}
