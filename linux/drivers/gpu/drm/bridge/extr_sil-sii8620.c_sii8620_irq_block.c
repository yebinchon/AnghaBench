
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int BIT_EMSCINTR_SPI_DVLD ;
 int BIT_SPIBURSTSTAT_EMSC_NORMAL_MODE ;
 int REG_EMSCINTR ;
 int REG_SPIBURSTSTAT ;
 int sii8620_burst_receive (struct sii8620*) ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_write (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_irq_block(struct sii8620 *ctx)
{
 u8 stat = sii8620_readb(ctx, REG_EMSCINTR);

 if (stat & BIT_EMSCINTR_SPI_DVLD) {
  u8 bstat = sii8620_readb(ctx, REG_SPIBURSTSTAT);

  if (bstat & BIT_SPIBURSTSTAT_EMSC_NORMAL_MODE)
   sii8620_burst_receive(ctx);
 }

 sii8620_write(ctx, REG_EMSCINTR, stat);
}
