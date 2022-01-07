
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int REG_CBUS_INT_1 ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_write (struct sii8620*,int ,int ) ;

__attribute__((used)) static void sii8620_irq_merr(struct sii8620 *ctx)
{
 u8 stat = sii8620_readb(ctx, REG_CBUS_INT_1);

 sii8620_write(ctx, REG_CBUS_INT_1, stat);
}
