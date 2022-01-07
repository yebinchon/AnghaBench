
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {scalar_t__ gen2_write_burst; } ;


 int REG_MDT_RCV_CTRL ;
 int REG_MDT_XMIT_CTRL ;
 int sii8620_write_seq_static (struct sii8620*,int ,int ,int ,int ) ;

__attribute__((used)) static void sii8620_disable_gen2_write_burst(struct sii8620 *ctx)
{
 if (!ctx->gen2_write_burst)
  return;

 sii8620_write_seq_static(ctx,
  REG_MDT_XMIT_CTRL, 0,
  REG_MDT_RCV_CTRL, 0
 );
 ctx->gen2_write_burst = 0;
}
