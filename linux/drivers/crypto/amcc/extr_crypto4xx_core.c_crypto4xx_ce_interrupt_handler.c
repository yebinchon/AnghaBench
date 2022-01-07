
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int PPC4XX_INTERRUPT_CLR ;
 int crypto4xx_interrupt_handler (int,void*,int ) ;

__attribute__((used)) static irqreturn_t crypto4xx_ce_interrupt_handler(int irq, void *data)
{
 return crypto4xx_interrupt_handler(irq, data, PPC4XX_INTERRUPT_CLR);
}
