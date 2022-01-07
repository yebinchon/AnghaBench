
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sii8620 {int dummy; } ;


 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_write (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_setbits(struct sii8620 *ctx, u16 addr, u8 mask, u8 val)
{
 val = (val & mask) | (sii8620_readb(ctx, addr) & ~mask);
 sii8620_write(ctx, addr, val);
}
