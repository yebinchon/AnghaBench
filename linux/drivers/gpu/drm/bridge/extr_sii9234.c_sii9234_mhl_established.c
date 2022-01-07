
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int dev; } ;
typedef enum sii9234_state { ____Placeholder_sii9234_state } sii9234_state ;


 int HPD_CHANGE_INT_MASK ;
 int MHL_TX_DISC_CTRL1_REG ;
 int MHL_TX_INTR1_ENABLE_REG ;
 int MHL_TX_MHLTX_CTL1_REG ;
 int RSEN_CHANGE_INT_MASK ;
 int ST_FAILURE ;
 int ST_MHL_ESTABLISHED ;
 int cbus_writeb (struct sii9234*,int,int) ;
 int cbus_writebm (struct sii9234*,int,int ,int) ;
 int dev_dbg (int ,char*) ;
 int mhl_tx_writeb (struct sii9234*,int ,int) ;
 int mhl_tx_writebm (struct sii9234*,int ,int ,int) ;
 scalar_t__ sii9234_clear_error (struct sii9234*) ;

__attribute__((used)) static enum sii9234_state sii9234_mhl_established(struct sii9234 *ctx)
{
 dev_dbg(ctx->dev, "mhl est interrupt\n");


 mhl_tx_writeb(ctx, MHL_TX_MHLTX_CTL1_REG, 0x10);

 cbus_writeb(ctx, 0x07, 0x32);
 cbus_writebm(ctx, 0x44, ~0, 1 << 1);

 mhl_tx_writebm(ctx, MHL_TX_DISC_CTRL1_REG, ~0, 1);
 mhl_tx_writeb(ctx, MHL_TX_INTR1_ENABLE_REG,
        RSEN_CHANGE_INT_MASK | HPD_CHANGE_INT_MASK);

 if (sii9234_clear_error(ctx))
  return ST_FAILURE;

 return ST_MHL_ESTABLISHED;
}
