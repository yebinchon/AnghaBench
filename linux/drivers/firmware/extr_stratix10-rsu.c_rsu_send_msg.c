
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stratix10_svc_client_msg {int command; unsigned long* arg; } ;
struct TYPE_2__ {int dev; int receive_cb; } ;
struct stratix10_rsu_priv {int lock; int chan; TYPE_1__ client; int completion; } ;
typedef int rsu_callback ;
typedef enum stratix10_svc_command_code { ____Placeholder_stratix10_svc_command_code } stratix10_svc_command_code ;


 int ETIMEDOUT ;
 int RSU_TIMEOUT ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int stratix10_svc_done (int ) ;
 int stratix10_svc_send (int ,struct stratix10_svc_client_msg*) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int rsu_send_msg(struct stratix10_rsu_priv *priv,
   enum stratix10_svc_command_code command,
   unsigned long arg,
   rsu_callback callback)
{
 struct stratix10_svc_client_msg msg;
 int ret;

 mutex_lock(&priv->lock);
 reinit_completion(&priv->completion);
 priv->client.receive_cb = callback;

 msg.command = command;
 if (arg)
  msg.arg[0] = arg;

 ret = stratix10_svc_send(priv->chan, &msg);
 if (ret < 0)
  goto status_done;

 ret = wait_for_completion_interruptible_timeout(&priv->completion,
       RSU_TIMEOUT);
 if (!ret) {
  dev_err(priv->client.dev,
   "timeout waiting for SMC call\n");
  ret = -ETIMEDOUT;
  goto status_done;
 } else if (ret < 0) {
  dev_err(priv->client.dev,
   "error %d waiting for SMC call\n", ret);
  goto status_done;
 } else {
  ret = 0;
 }

status_done:
 stratix10_svc_done(priv->chan);
 mutex_unlock(&priv->lock);
 return ret;
}
