
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_cryp {int irq_status; int gcm_ctr; } ;
typedef int irqreturn_t ;


 int CRYP_CR ;
 int CRYP_IMSCR ;
 int CR_PH_HEADER ;
 int CR_PH_MASK ;
 int IRQ_HANDLED ;
 int MISR_IN ;
 int MISR_OUT ;
 scalar_t__ is_ccm (struct stm32_cryp*) ;
 scalar_t__ is_gcm (struct stm32_cryp*) ;
 int stm32_cryp_finish_req (struct stm32_cryp*,int ) ;
 int stm32_cryp_irq_read_data (struct stm32_cryp*) ;
 int stm32_cryp_irq_write_ccm_header (struct stm32_cryp*) ;
 int stm32_cryp_irq_write_data (struct stm32_cryp*) ;
 int stm32_cryp_irq_write_gcm_header (struct stm32_cryp*) ;
 int stm32_cryp_read (struct stm32_cryp*,int ) ;
 int stm32_cryp_write (struct stm32_cryp*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t stm32_cryp_irq_thread(int irq, void *arg)
{
 struct stm32_cryp *cryp = arg;
 u32 ph;

 if (cryp->irq_status & MISR_OUT)

  if (unlikely(stm32_cryp_irq_read_data(cryp))) {

   stm32_cryp_write(cryp, CRYP_IMSCR, 0);
   stm32_cryp_finish_req(cryp, 0);
   return IRQ_HANDLED;
  }

 if (cryp->irq_status & MISR_IN) {
  if (is_gcm(cryp)) {
   ph = stm32_cryp_read(cryp, CRYP_CR) & CR_PH_MASK;
   if (unlikely(ph == CR_PH_HEADER))

    stm32_cryp_irq_write_gcm_header(cryp);
   else

    stm32_cryp_irq_write_data(cryp);
   cryp->gcm_ctr++;
  } else if (is_ccm(cryp)) {
   ph = stm32_cryp_read(cryp, CRYP_CR) & CR_PH_MASK;
   if (unlikely(ph == CR_PH_HEADER))

    stm32_cryp_irq_write_ccm_header(cryp);
   else

    stm32_cryp_irq_write_data(cryp);
  } else {

   stm32_cryp_irq_write_data(cryp);
  }
 }

 return IRQ_HANDLED;
}
