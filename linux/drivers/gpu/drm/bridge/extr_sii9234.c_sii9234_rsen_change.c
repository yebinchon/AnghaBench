
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {scalar_t__ state; int dev; } ;
typedef enum sii9234_state { ____Placeholder_sii9234_state } sii9234_state ;


 int MHL_TX_SYSSTAT_REG ;
 int RSEN_STATUS ;
 int ST_FAILURE ;
 scalar_t__ ST_RGND_1K ;
 int ST_RSEN_HIGH ;
 int T_SRC_RXSENSE_DEGLITCH ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int force_usb_id_switch_open (struct sii9234*) ;
 int mhl_tx_readb (struct sii9234*,int ) ;
 int msleep (int ) ;
 int release_usb_id_switch_open (struct sii9234*) ;
 int sii9234_tmds_control (struct sii9234*,int) ;

__attribute__((used)) static enum sii9234_state sii9234_rsen_change(struct sii9234 *ctx)
{
 int value;


 if (ctx->state != ST_RGND_1K) {
  dev_err(ctx->dev, "RSEN_HIGH without RGND_1K\n");
  return ST_FAILURE;
 }
 value = mhl_tx_readb(ctx, MHL_TX_SYSSTAT_REG);
 if (value < 0)
  return ST_FAILURE;

 if (value & RSEN_STATUS) {
  dev_dbg(ctx->dev, "MHL cable connected.. RSEN High\n");
  return ST_RSEN_HIGH;
 }
 dev_dbg(ctx->dev, "RSEN lost\n");







 msleep(T_SRC_RXSENSE_DEGLITCH);
 value = mhl_tx_readb(ctx, MHL_TX_SYSSTAT_REG);
 if (value < 0)
  return ST_FAILURE;
 dev_dbg(ctx->dev, "sys_stat: %x\n", value);

 if (value & RSEN_STATUS) {
  dev_dbg(ctx->dev, "RSEN recovery\n");
  return ST_RSEN_HIGH;
 }
 dev_dbg(ctx->dev, "RSEN Really LOW\n");

 sii9234_tmds_control(ctx, 0);
 force_usb_id_switch_open(ctx);
 release_usb_id_switch_open(ctx);

 return ST_FAILURE;
}
