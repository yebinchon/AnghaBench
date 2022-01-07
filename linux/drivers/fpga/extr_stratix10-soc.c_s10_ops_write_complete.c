
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct s10_priv {int chan; int status; int status_return_completion; TYPE_1__ client; } ;
struct fpga_manager {struct s10_priv* priv; } ;
struct fpga_image_info {int config_complete_timeout_us; } ;
struct device {int dummy; } ;


 int COMMAND_RECONFIG_STATUS ;
 int EFAULT ;
 int ETIMEDOUT ;
 int SVC_STATUS_RECONFIG_COMPLETED ;
 int SVC_STATUS_RECONFIG_ERROR ;
 int dev_err (struct device*,char*,...) ;
 int reinit_completion (int *) ;
 int s10_svc_send_msg (struct s10_priv*,int ,int *,int ) ;
 int stratix10_svc_done (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 unsigned long usecs_to_jiffies (int ) ;
 int wait_for_completion_interruptible_timeout (int *,unsigned long) ;

__attribute__((used)) static int s10_ops_write_complete(struct fpga_manager *mgr,
      struct fpga_image_info *info)
{
 struct s10_priv *priv = mgr->priv;
 struct device *dev = priv->client.dev;
 unsigned long timeout;
 int ret;

 timeout = usecs_to_jiffies(info->config_complete_timeout_us);

 do {
  reinit_completion(&priv->status_return_completion);

  ret = s10_svc_send_msg(priv, COMMAND_RECONFIG_STATUS, ((void*)0), 0);
  if (ret < 0)
   break;

  ret = wait_for_completion_interruptible_timeout(
   &priv->status_return_completion, timeout);
  if (!ret) {
   dev_err(dev,
    "timeout waiting for RECONFIG_COMPLETED\n");
   ret = -ETIMEDOUT;
   break;
  }
  if (ret < 0) {
   dev_err(dev,
    "error (%d) waiting for RECONFIG_COMPLETED\n",
    ret);
   break;
  }

  timeout = ret;
  ret = 0;

  if (test_and_clear_bit(SVC_STATUS_RECONFIG_COMPLETED,
           &priv->status))
   break;

  if (test_and_clear_bit(SVC_STATUS_RECONFIG_ERROR,
           &priv->status)) {
   dev_err(dev, "ERROR - giving up - SVC_STATUS_RECONFIG_ERROR\n");
   ret = -EFAULT;
   break;
  }
 } while (1);

 stratix10_svc_done(priv->chan);

 return ret;
}
