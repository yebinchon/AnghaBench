
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_sc_rpc_msg {int func; } ;
struct imx_sc_ipc {int dev; int lock; int done; scalar_t__ count; void* msg; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int MAX_RX_TIMEOUT ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int imx_sc_to_linux_errno (int) ;
 int imx_scu_ipc_write (struct imx_sc_ipc*,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
{
 struct imx_sc_rpc_msg *hdr;
 int ret;

 if (WARN_ON(!sc_ipc || !msg))
  return -EINVAL;

 mutex_lock(&sc_ipc->lock);
 reinit_completion(&sc_ipc->done);

 sc_ipc->msg = msg;
 sc_ipc->count = 0;
 ret = imx_scu_ipc_write(sc_ipc, msg);
 if (ret < 0) {
  dev_err(sc_ipc->dev, "RPC send msg failed: %d\n", ret);
  goto out;
 }

 if (have_resp) {
  if (!wait_for_completion_timeout(&sc_ipc->done,
       MAX_RX_TIMEOUT)) {
   dev_err(sc_ipc->dev, "RPC send msg timeout\n");
   mutex_unlock(&sc_ipc->lock);
   return -ETIMEDOUT;
  }


  hdr = msg;
  ret = hdr->func;
 }

out:
 mutex_unlock(&sc_ipc->lock);

 dev_dbg(sc_ipc->dev, "RPC SVC done\n");

 return imx_sc_to_linux_errno(ret);
}
