
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {scalar_t__ state; int dev; } ;
typedef enum sii9234_state { ____Placeholder_sii9234_state } sii9234_state ;


 int MHL_TX_DISC_CTRL4_REG ;
 int MHL_TX_DISC_CTRL5_REG ;
 int MHL_TX_DISC_CTRL6_REG ;
 int MHL_TX_STAT2_REG ;
 int RGND_INTP_1K ;
 int RGND_INTP_MASK ;
 scalar_t__ ST_D3 ;
 int ST_FAILURE ;
 int ST_RGND_1K ;
 int ST_RGND_INIT ;
 int T_SRC_VBUS_CBUS_TO_STABLE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int mhl_tx_readb (struct sii9234*,int ) ;
 int mhl_tx_writeb (struct sii9234*,int ,int) ;
 int mhl_tx_writebm (struct sii9234*,int ,int ,int) ;
 int msleep (int ) ;
 scalar_t__ sii9234_clear_error (struct sii9234*) ;
 int sii9234_hw_reset (struct sii9234*) ;
 int sii9234_reset (struct sii9234*) ;

__attribute__((used)) static enum sii9234_state sii9234_rgnd_ready_irq(struct sii9234 *ctx)
{
 int value;

 if (ctx->state == ST_D3) {
  int ret;

  dev_dbg(ctx->dev, "RGND_READY_INT\n");
  sii9234_hw_reset(ctx);

  ret = sii9234_reset(ctx);
  if (ret < 0) {
   dev_err(ctx->dev, "sii9234_reset() failed\n");
   return ST_FAILURE;
  }

  return ST_RGND_INIT;
 }


 if (ctx->state != ST_RGND_INIT)
  return ST_FAILURE;

 value = mhl_tx_readb(ctx, MHL_TX_STAT2_REG);
 if (sii9234_clear_error(ctx))
  return ST_FAILURE;

 if ((value & RGND_INTP_MASK) != RGND_INTP_1K) {
  dev_warn(ctx->dev, "RGND is not 1k\n");
  return ST_RGND_INIT;
 }
 dev_dbg(ctx->dev, "RGND 1K!!\n");
 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL4_REG, ~0, 0x8C);
 mhl_tx_writeb(ctx, MHL_TX_DISC_CTRL5_REG, 0x77);
 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL6_REG, ~0, 0x05);
 if (sii9234_clear_error(ctx))
  return ST_FAILURE;

 msleep(T_SRC_VBUS_CBUS_TO_STABLE);
 return ST_RGND_1K;
}
