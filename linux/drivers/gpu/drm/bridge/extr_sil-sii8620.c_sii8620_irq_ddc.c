
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int feature_complete; } ;


 int BIT_DDC_CMD_DONE ;
 int MHL_INT_RC_FEAT_REQ ;
 int MHL_INT_REG (int ) ;
 int RCHANGE ;
 int REG_INTR3 ;
 int REG_INTR3_MASK ;
 int sii8620_enable_hpd (struct sii8620*) ;
 scalar_t__ sii8620_is_mhl3 (struct sii8620*) ;
 int sii8620_mt_set_int (struct sii8620*,int ,int ) ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_write (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_irq_ddc(struct sii8620 *ctx)
{
 u8 stat = sii8620_readb(ctx, REG_INTR3);

 if (stat & BIT_DDC_CMD_DONE) {
  sii8620_write(ctx, REG_INTR3_MASK, 0);
  if (sii8620_is_mhl3(ctx) && !ctx->feature_complete)
   sii8620_mt_set_int(ctx, MHL_INT_REG(RCHANGE),
        MHL_INT_RC_FEAT_REQ);
  else
   sii8620_enable_hpd(ctx);
 }
 sii8620_write(ctx, REG_INTR3, stat);
}
