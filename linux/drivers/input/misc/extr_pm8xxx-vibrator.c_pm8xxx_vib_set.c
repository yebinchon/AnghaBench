
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_vib {unsigned int reg_vib_drv; unsigned int level; int regmap; struct pm8xxx_regs* regs; } ;
struct pm8xxx_regs {unsigned int drv_shift; unsigned int drv_mask; scalar_t__ enable_mask; int enable_addr; int drv_addr; } ;


 int regmap_update_bits (int ,int ,scalar_t__,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int pm8xxx_vib_set(struct pm8xxx_vib *vib, bool on)
{
 int rc;
 unsigned int val = vib->reg_vib_drv;
 const struct pm8xxx_regs *regs = vib->regs;

 if (on)
  val |= (vib->level << regs->drv_shift) & regs->drv_mask;
 else
  val &= ~regs->drv_mask;

 rc = regmap_write(vib->regmap, regs->drv_addr, val);
 if (rc < 0)
  return rc;

 vib->reg_vib_drv = val;

 if (regs->enable_mask)
  rc = regmap_update_bits(vib->regmap, regs->enable_addr,
     on ? regs->enable_mask : 0, val);

 return rc;
}
