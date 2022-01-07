
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int mt_state; } ;


 int BIT_INTR9_DEVCAP_DONE ;
 int MT_STATE_DONE ;
 int REG_INTR9 ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_write (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_irq_edid(struct sii8620 *ctx)
{
 u8 stat = sii8620_readb(ctx, REG_INTR9);

 sii8620_write(ctx, REG_INTR9, stat);

 if (stat & BIT_INTR9_DEVCAP_DONE)
  ctx->mt_state = MT_STATE_DONE;
}
