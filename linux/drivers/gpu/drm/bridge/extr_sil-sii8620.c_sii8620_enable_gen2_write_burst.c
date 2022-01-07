
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int gen2_write_burst; scalar_t__ mode; } ;


 int BIT_MDT_RCV_CTRL_MDT_DELAY_RCV_EN ;
 int BIT_MDT_RCV_CTRL_MDT_RCV_EN ;
 scalar_t__ CM_MHL1 ;
 int REG_MDT_RCV_CTRL ;
 int REG_MDT_RCV_TIMEOUT ;
 int sii8620_write_seq (struct sii8620*,int ,int,int ,int ) ;

__attribute__((used)) static void sii8620_enable_gen2_write_burst(struct sii8620 *ctx)
{
 u8 ctrl = BIT_MDT_RCV_CTRL_MDT_RCV_EN;

 if (ctx->gen2_write_burst)
  return;

 if (ctx->mode >= CM_MHL1)
  ctrl |= BIT_MDT_RCV_CTRL_MDT_DELAY_RCV_EN;

 sii8620_write_seq(ctx,
  REG_MDT_RCV_TIMEOUT, 100,
  REG_MDT_RCV_CTRL, ctrl
 );
 ctx->gen2_write_burst = 1;
}
