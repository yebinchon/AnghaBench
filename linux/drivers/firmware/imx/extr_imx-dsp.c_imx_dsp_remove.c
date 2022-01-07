
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct imx_dsp_ipc {struct imx_dsp_chan* chans; } ;
struct imx_dsp_chan {int ch; } ;


 int DSP_MU_CHAN_NUM ;
 struct imx_dsp_ipc* dev_get_drvdata (int *) ;
 int mbox_free_channel (int ) ;

__attribute__((used)) static int imx_dsp_remove(struct platform_device *pdev)
{
 struct imx_dsp_chan *dsp_chan;
 struct imx_dsp_ipc *dsp_ipc;
 int i;

 dsp_ipc = dev_get_drvdata(&pdev->dev);

 for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
  dsp_chan = &dsp_ipc->chans[i];
  mbox_free_channel(dsp_chan->ch);
 }

 return 0;
}
