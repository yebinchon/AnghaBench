
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int r_size; scalar_t__ rx_ack; } ;
struct sii8620 {TYPE_1__ burst; int mode; } ;


 int BIT_MHL_PLL_CTL2_CLKDETECT_EN ;
 int CM_ECBUS_S ;
 int MSK_TDM_SYNCHRONIZED ;
 int REG_MHL_PLL_CTL2 ;
 int REG_TRXINTH ;
 int REG_TRXSTA2 ;
 int SII8620_BURST_BUF_LEN ;
 int VAL_TDM_SYNCHRONIZED ;
 int sii8620_burst_tx_rbuf_info (struct sii8620*,int ) ;
 int sii8620_got_xdevcap ;
 int sii8620_mt_read_devcap (struct sii8620*,int) ;
 int sii8620_mt_set_cont (struct sii8620*,int ) ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_write (struct sii8620*,int ,int) ;
 int sii8620_write_seq_static (struct sii8620*,int ,int ,int ,int ) ;

__attribute__((used)) static void sii8620_irq_tdm(struct sii8620 *ctx)
{
 u8 stat = sii8620_readb(ctx, REG_TRXINTH);
 u8 tdm = sii8620_readb(ctx, REG_TRXSTA2);

 if ((tdm & MSK_TDM_SYNCHRONIZED) == VAL_TDM_SYNCHRONIZED) {
  ctx->mode = CM_ECBUS_S;
  ctx->burst.rx_ack = 0;
  ctx->burst.r_size = SII8620_BURST_BUF_LEN;
  sii8620_burst_tx_rbuf_info(ctx, SII8620_BURST_BUF_LEN);
  sii8620_mt_read_devcap(ctx, 1);
  sii8620_mt_set_cont(ctx, sii8620_got_xdevcap);
 } else {
  sii8620_write_seq_static(ctx,
   REG_MHL_PLL_CTL2, 0,
   REG_MHL_PLL_CTL2, BIT_MHL_PLL_CTL2_CLKDETECT_EN
  );
 }

 sii8620_write(ctx, REG_TRXINTH, stat);
}
