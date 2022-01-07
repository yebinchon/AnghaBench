
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_context {scalar_t__ credit_intr_count; int credit_ctrl_lock; int credit_ctrl; int hw_context; int dd; } ;


 int CREDIT_CTRL ;
 int CREDIT_CTRL_CREDIT_INTR_SMASK ;
 int SC (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_kctxt_csr (int ,int ,int ,int ) ;

void sc_add_credit_return_intr(struct send_context *sc)
{
 unsigned long flags;


 spin_lock_irqsave(&sc->credit_ctrl_lock, flags);
 if (sc->credit_intr_count == 0) {
  sc->credit_ctrl |= SC(CREDIT_CTRL_CREDIT_INTR_SMASK);
  write_kctxt_csr(sc->dd, sc->hw_context,
    SC(CREDIT_CTRL), sc->credit_ctrl);
 }
 sc->credit_intr_count++;
 spin_unlock_irqrestore(&sc->credit_ctrl_lock, flags);
}
