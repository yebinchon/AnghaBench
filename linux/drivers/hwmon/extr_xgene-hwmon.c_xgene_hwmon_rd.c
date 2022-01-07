
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int param2; int param1; int msg; } ;
struct xgene_hwmon_dev {int resp_pending; int rd_mutex; TYPE_1__ sync_msg; int dev; int rd_complete; int mbox_chan; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int MBOX_OP_TIMEOUTMS ;
 scalar_t__ MSG_TYPE (int ) ;
 scalar_t__ MSG_TYPE_ERR ;
 int dev_err (int ,char*,...) ;
 int init_completion (int *) ;
 int mbox_send_message (int ,int *) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int xgene_hwmon_rd(struct xgene_hwmon_dev *ctx, u32 *msg)
{
 int rc;

 mutex_lock(&ctx->rd_mutex);
 init_completion(&ctx->rd_complete);
 ctx->resp_pending = 1;

 rc = mbox_send_message(ctx->mbox_chan, msg);
 if (rc < 0) {
  dev_err(ctx->dev, "Mailbox send error %d\n", rc);
  goto err;
 }

 if (!wait_for_completion_timeout(&ctx->rd_complete,
      msecs_to_jiffies(MBOX_OP_TIMEOUTMS))) {
  dev_err(ctx->dev, "Mailbox operation timed out\n");
  rc = -ETIMEDOUT;
  goto err;
 }


 if (MSG_TYPE(ctx->sync_msg.msg) == MSG_TYPE_ERR) {
  rc = -EINVAL;
  goto err;
 }

 msg[0] = ctx->sync_msg.msg;
 msg[1] = ctx->sync_msg.param1;
 msg[2] = ctx->sync_msg.param2;

err:
 ctx->resp_pending = 0;
 mutex_unlock(&ctx->rd_mutex);
 return rc;
}
