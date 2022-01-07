
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct stratix10_svc_command_config_type {int flags; } ;
struct TYPE_3__ {struct device* dev; } ;
struct s10_priv {int chan; TYPE_2__* svc_bufs; int status; int status_return_completion; TYPE_1__ client; } ;
struct fpga_manager {struct s10_priv* priv; } ;
struct fpga_image_info {int flags; } ;
struct device {int dummy; } ;
typedef int ctype ;
struct TYPE_4__ {char* buf; scalar_t__ lock; } ;


 int BIT (int ) ;
 int COMMAND_RECONFIG ;
 int COMMAND_RECONFIG_FLAG_PARTIAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int FPGA_MGR_PARTIAL_RECONFIG ;
 size_t NUM_SVC_BUFS ;
 int S10_RECONFIG_TIMEOUT ;
 int SVC_BUF_SIZE ;
 int SVC_STATUS_RECONFIG_REQUEST_OK ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int reinit_completion (int *) ;
 int s10_free_buffers (struct fpga_manager*) ;
 int s10_svc_send_msg (struct s10_priv*,int ,struct stratix10_svc_command_config_type*,int) ;
 char* stratix10_svc_allocate_memory (int ,int ) ;
 int stratix10_svc_done (int ) ;
 int test_and_clear_bit (int ,int *) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int s10_ops_write_init(struct fpga_manager *mgr,
         struct fpga_image_info *info,
         const char *buf, size_t count)
{
 struct s10_priv *priv = mgr->priv;
 struct device *dev = priv->client.dev;
 struct stratix10_svc_command_config_type ctype;
 char *kbuf;
 uint i;
 int ret;

 ctype.flags = 0;
 if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
  dev_dbg(dev, "Requesting partial reconfiguration.\n");
  ctype.flags |= BIT(COMMAND_RECONFIG_FLAG_PARTIAL);
 } else {
  dev_dbg(dev, "Requesting full reconfiguration.\n");
 }

 reinit_completion(&priv->status_return_completion);
 ret = s10_svc_send_msg(priv, COMMAND_RECONFIG,
          &ctype, sizeof(ctype));
 if (ret < 0)
  goto init_done;

 ret = wait_for_completion_interruptible_timeout(
  &priv->status_return_completion, S10_RECONFIG_TIMEOUT);
 if (!ret) {
  dev_err(dev, "timeout waiting for RECONFIG_REQUEST\n");
  ret = -ETIMEDOUT;
  goto init_done;
 }
 if (ret < 0) {
  dev_err(dev, "error (%d) waiting for RECONFIG_REQUEST\n", ret);
  goto init_done;
 }

 ret = 0;
 if (!test_and_clear_bit(SVC_STATUS_RECONFIG_REQUEST_OK,
    &priv->status)) {
  ret = -ETIMEDOUT;
  goto init_done;
 }


 for (i = 0; i < NUM_SVC_BUFS; i++) {
  kbuf = stratix10_svc_allocate_memory(priv->chan, SVC_BUF_SIZE);
  if (!kbuf) {
   s10_free_buffers(mgr);
   ret = -ENOMEM;
   goto init_done;
  }

  priv->svc_bufs[i].buf = kbuf;
  priv->svc_bufs[i].lock = 0;
 }

init_done:
 stratix10_svc_done(priv->chan);
 return ret;
}
