
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int* regs; int reg_shift; scalar_t__ base; } ;


 int readw_relaxed (scalar_t__) ;

__attribute__((used)) static inline u16 omap_i2c_read_reg(struct omap_i2c_dev *omap, int reg)
{
 return readw_relaxed(omap->base +
    (omap->regs[reg] << omap->reg_shift));
}
