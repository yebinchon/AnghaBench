
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cryp {int irq_status; } ;
typedef int irqreturn_t ;


 int CRYP_MISR ;
 int IRQ_WAKE_THREAD ;
 int stm32_cryp_read (struct stm32_cryp*,int ) ;

__attribute__((used)) static irqreturn_t stm32_cryp_irq(int irq, void *arg)
{
 struct stm32_cryp *cryp = arg;

 cryp->irq_status = stm32_cryp_read(cryp, CRYP_MISR);

 return IRQ_WAKE_THREAD;
}
