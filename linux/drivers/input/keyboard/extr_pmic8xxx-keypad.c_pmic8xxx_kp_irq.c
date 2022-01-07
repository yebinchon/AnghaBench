
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic8xxx_kp {int dev; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEYP_CTRL ;
 unsigned int KEYP_CTRL_EVNTS_MASK ;
 int dev_err (int ,char*) ;
 int pmic8xxx_kp_scan_matrix (struct pmic8xxx_kp*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t pmic8xxx_kp_irq(int irq, void *data)
{
 struct pmic8xxx_kp *kp = data;
 unsigned int ctrl_val, events;
 int rc;

 rc = regmap_read(kp->regmap, KEYP_CTRL, &ctrl_val);
 if (rc < 0) {
  dev_err(kp->dev, "failed to read keyp_ctrl register\n");
  return IRQ_HANDLED;
 }

 events = ctrl_val & KEYP_CTRL_EVNTS_MASK;

 rc = pmic8xxx_kp_scan_matrix(kp, events);
 if (rc < 0)
  dev_err(kp->dev, "failed to scan matrix\n");

 return IRQ_HANDLED;
}
