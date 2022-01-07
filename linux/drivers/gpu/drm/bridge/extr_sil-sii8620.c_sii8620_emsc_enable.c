
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int BIT_COMMECNT_I2C_TO_EMSC_EN ;
 int BIT_EMSCINTR_SPI_DVLD ;
 int BIT_GENCTL_CLR_EMSC_RFIFO ;
 int BIT_GENCTL_CLR_EMSC_XFIFO ;
 int BIT_GENCTL_EMSC_EN ;
 int REG_COMMECNT ;
 int REG_EMSCINTR ;
 int REG_EMSCINTRMASK ;
 int REG_GENCTL ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_setbits (struct sii8620*,int ,int,int ) ;
 int sii8620_write (struct sii8620*,int ,int ) ;

__attribute__((used)) static void sii8620_emsc_enable(struct sii8620 *ctx)
{
 u8 reg;

 sii8620_setbits(ctx, REG_GENCTL, BIT_GENCTL_EMSC_EN
      | BIT_GENCTL_CLR_EMSC_RFIFO
      | BIT_GENCTL_CLR_EMSC_XFIFO, ~0);
 sii8620_setbits(ctx, REG_GENCTL, BIT_GENCTL_CLR_EMSC_RFIFO
      | BIT_GENCTL_CLR_EMSC_XFIFO, 0);
 sii8620_setbits(ctx, REG_COMMECNT, BIT_COMMECNT_I2C_TO_EMSC_EN, ~0);
 reg = sii8620_readb(ctx, REG_EMSCINTR);
 sii8620_write(ctx, REG_EMSCINTR, reg);
 sii8620_write(ctx, REG_EMSCINTRMASK, BIT_EMSCINTR_SPI_DVLD);
}
