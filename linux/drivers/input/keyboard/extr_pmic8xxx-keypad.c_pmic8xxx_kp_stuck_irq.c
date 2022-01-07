
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pmic8xxx_kp {int stuckstate; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PM8XXX_MAX_ROWS ;
 int __pmic8xxx_kp_scan_matrix (struct pmic8xxx_kp*,int *,int ) ;
 int dev_err (int ,char*) ;
 int pmic8xxx_kp_read_matrix (struct pmic8xxx_kp*,int *,int *) ;

__attribute__((used)) static irqreturn_t pmic8xxx_kp_stuck_irq(int irq, void *data)
{
 u16 new_state[PM8XXX_MAX_ROWS];
 u16 old_state[PM8XXX_MAX_ROWS];
 int rc;
 struct pmic8xxx_kp *kp = data;

 rc = pmic8xxx_kp_read_matrix(kp, new_state, old_state);
 if (rc < 0) {
  dev_err(kp->dev, "failed to read keypad matrix\n");
  return IRQ_HANDLED;
 }

 __pmic8xxx_kp_scan_matrix(kp, new_state, kp->stuckstate);

 return IRQ_HANDLED;
}
