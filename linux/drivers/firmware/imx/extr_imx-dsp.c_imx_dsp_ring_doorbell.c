
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_dsp_ipc {struct imx_dsp_chan* chans; } ;
struct imx_dsp_chan {int ch; } ;


 unsigned int DSP_MU_CHAN_NUM ;
 int EINVAL ;
 int mbox_send_message (int ,int *) ;

int imx_dsp_ring_doorbell(struct imx_dsp_ipc *ipc, unsigned int idx)
{
 int ret;
 struct imx_dsp_chan *dsp_chan;

 if (idx >= DSP_MU_CHAN_NUM)
  return -EINVAL;

 dsp_chan = &ipc->chans[idx];
 ret = mbox_send_message(dsp_chan->ch, ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
