
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int msg; int param1; int param2; } ;
struct xgene_hwmon_dev {int resp_pending; int mbox_idx; int rd_mutex; int mbox_chan; TYPE_1__ sync_msg; int dev; int usecs_lat; int rd_complete; struct acpi_pcct_shared_memory* pcc_comm_addr; } ;
struct slimpro_resp_msg {int dummy; } ;
struct acpi_pcct_shared_memory {int signature; int command; int status; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int MSG_TYPE (int) ;
 int MSG_TYPE_ERR ;
 int PCCC_GENERATE_DB_INT ;
 int PCCS_CMD_COMPLETE ;
 int PCC_SIGNATURE_MASK ;
 int READ_ONCE (int) ;
 int WRITE_ONCE (int,int ) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*,...) ;
 int init_completion (int *) ;
 int le16_to_cpu (int ) ;
 int mbox_chan_txdone (int ,int ) ;
 int mbox_send_message (int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int xgene_hwmon_pcc_rd(struct xgene_hwmon_dev *ctx, u32 *msg)
{
 struct acpi_pcct_shared_memory *generic_comm_base = ctx->pcc_comm_addr;
 u32 *ptr = (void *)(generic_comm_base + 1);
 int rc, i;
 u16 val;

 mutex_lock(&ctx->rd_mutex);
 init_completion(&ctx->rd_complete);
 ctx->resp_pending = 1;


 WRITE_ONCE(generic_comm_base->signature,
     cpu_to_le32(PCC_SIGNATURE_MASK | ctx->mbox_idx));


 WRITE_ONCE(generic_comm_base->command,
     cpu_to_le16(MSG_TYPE(msg[0]) | PCCC_GENERATE_DB_INT));


 val = le16_to_cpu(READ_ONCE(generic_comm_base->status));
 val &= ~PCCS_CMD_COMPLETE;
 WRITE_ONCE(generic_comm_base->status, cpu_to_le16(val));


 for (i = 0; i < sizeof(struct slimpro_resp_msg) / 4; i++)
  WRITE_ONCE(ptr[i], cpu_to_le32(msg[i]));


 rc = mbox_send_message(ctx->mbox_chan, msg);
 if (rc < 0) {
  dev_err(ctx->dev, "Mailbox send error %d\n", rc);
  goto err;
 }
 if (!wait_for_completion_timeout(&ctx->rd_complete,
      usecs_to_jiffies(ctx->usecs_lat))) {
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
 mbox_chan_txdone(ctx->mbox_chan, 0);
 ctx->resp_pending = 0;
 mutex_unlock(&ctx->rd_mutex);
 return rc;
}
