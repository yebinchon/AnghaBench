
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic8xxx_kp {int ctrl_reg; int regmap; } ;


 int KEYP_CTRL ;
 int KEYP_CTRL_KEYP_EN ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int pmic8xxx_kp_disable(struct pmic8xxx_kp *kp)
{
 int rc;

 kp->ctrl_reg &= ~KEYP_CTRL_KEYP_EN;

 rc = regmap_write(kp->regmap, KEYP_CTRL, kp->ctrl_reg);
 if (rc < 0)
  return rc;

 return rc;
}
