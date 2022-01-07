
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ttl_module {TYPE_1__* regs; } ;
struct TYPE_2__ {int control; } ;


 int iowrite16be (int ,int *) ;

__attribute__((used)) static void ttl_write_reg(struct ttl_module *mod, u8 reg, u16 val)
{
 iowrite16be(reg, &mod->regs->control);
 iowrite16be(val, &mod->regs->control);
}
