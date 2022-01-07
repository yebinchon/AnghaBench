
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_sc_rpc_msg {int size; int func; int svc; } ;
struct imx_sc_ipc {struct imx_sc_chan* chans; int dev; } ;
struct imx_sc_chan {int ch; } ;


 int EINVAL ;
 int IMX_SC_RPC_MAX_MSG ;
 int dev_dbg (int ,char*,int ,int ,int) ;
 int mbox_send_message (int ,int *) ;

__attribute__((used)) static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
{
 struct imx_sc_rpc_msg *hdr = msg;
 struct imx_sc_chan *sc_chan;
 u32 *data = msg;
 int ret;
 int i;


 if (hdr->size > IMX_SC_RPC_MAX_MSG)
  return -EINVAL;

 dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
  hdr->func, hdr->size);

 for (i = 0; i < hdr->size; i++) {
  sc_chan = &sc_ipc->chans[i % 4];
  ret = mbox_send_message(sc_chan->ch, &data[i]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
