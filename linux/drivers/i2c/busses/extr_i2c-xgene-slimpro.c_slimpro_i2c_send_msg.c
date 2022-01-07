
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slimpro_i2c_dev {int * resp_msg; int mbox_chan; int rd_complete; } ;


 int acpi_disabled ;
 int mbox_chan_txdone (int ,int ) ;
 int mbox_send_message (int ,int *) ;
 int reinit_completion (int *) ;
 int slimpro_i2c_pcc_tx_prepare (struct slimpro_i2c_dev*,int *) ;
 int start_i2c_msg_xfer (struct slimpro_i2c_dev*) ;

__attribute__((used)) static int slimpro_i2c_send_msg(struct slimpro_i2c_dev *ctx,
    u32 *msg,
    u32 *data)
{
 int rc;

 ctx->resp_msg = data;

 if (!acpi_disabled) {
  reinit_completion(&ctx->rd_complete);
  slimpro_i2c_pcc_tx_prepare(ctx, msg);
 }

 rc = mbox_send_message(ctx->mbox_chan, msg);
 if (rc < 0)
  goto err;

 rc = start_i2c_msg_xfer(ctx);

err:
 if (!acpi_disabled)
  mbox_chan_txdone(ctx->mbox_chan, 0);

 ctx->resp_msg = ((void*)0);

 return rc;
}
