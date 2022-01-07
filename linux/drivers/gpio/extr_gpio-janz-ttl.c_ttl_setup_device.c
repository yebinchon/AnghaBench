
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttl_module {TYPE_1__* regs; } ;
struct TYPE_2__ {int portc; int portb; int porta; int control; } ;


 int CONF_PAE ;
 int CONF_PBE ;
 int CONF_PCE ;
 int MASTER_CONF_CTL ;
 int PORTA_DIRECTION ;
 int PORTA_IOCTL ;
 int PORTB_DIRECTION ;
 int PORTB_IOCTL ;
 int PORTC_DIRECTION ;
 int PORTC_IOCTL ;
 int iowrite16be (int,int *) ;
 int ttl_write_reg (struct ttl_module*,int ,int) ;

__attribute__((used)) static void ttl_setup_device(struct ttl_module *mod)
{

 iowrite16be(0x0000, &mod->regs->control);
 iowrite16be(0x0001, &mod->regs->control);
 iowrite16be(0x0000, &mod->regs->control);


 ttl_write_reg(mod, PORTA_IOCTL, 0x00ff);
 ttl_write_reg(mod, PORTB_IOCTL, 0x00ff);
 ttl_write_reg(mod, PORTC_IOCTL, 0x000f);


 ttl_write_reg(mod, PORTA_DIRECTION, 0x0000);
 ttl_write_reg(mod, PORTB_DIRECTION, 0x0000);
 ttl_write_reg(mod, PORTC_DIRECTION, 0x0000);


 iowrite16be(0x0000, &mod->regs->porta);
 iowrite16be(0x0000, &mod->regs->portb);
 iowrite16be(0x0000, &mod->regs->portc);


 ttl_write_reg(mod, MASTER_CONF_CTL, CONF_PAE | CONF_PBE | CONF_PCE);
}
