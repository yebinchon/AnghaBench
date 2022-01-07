
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dummy; } ;
struct TYPE_2__ {struct serio* serio; } ;


 size_t I8042_AUX_PORT_NO ;
 int I8042_CMD_CTL_WCTR ;
 int I8042_CTR_AUXDIS ;
 int I8042_CTR_AUXINT ;
 int I8042_CTR_KBDDIS ;
 int I8042_CTR_KBDINT ;
 scalar_t__ i8042_command (int*,int ) ;
 int i8042_ctr ;
 int i8042_interrupt (int ,int *) ;
 TYPE_1__* i8042_ports ;
 int pr_err (char*,char const*) ;
 int pr_warn (char*,char const*) ;
 int udelay (int) ;

__attribute__((used)) static void i8042_port_close(struct serio *serio)
{
 int irq_bit;
 int disable_bit;
 const char *port_name;

 if (serio == i8042_ports[I8042_AUX_PORT_NO].serio) {
  irq_bit = I8042_CTR_AUXINT;
  disable_bit = I8042_CTR_AUXDIS;
  port_name = "AUX";
 } else {
  irq_bit = I8042_CTR_KBDINT;
  disable_bit = I8042_CTR_KBDDIS;
  port_name = "KBD";
 }

 i8042_ctr &= ~irq_bit;
 if (i8042_command(&i8042_ctr, I8042_CMD_CTL_WCTR))
  pr_warn("Can't write CTR while closing %s port\n", port_name);

 udelay(50);

 i8042_ctr &= ~disable_bit;
 i8042_ctr |= irq_bit;
 if (i8042_command(&i8042_ctr, I8042_CMD_CTL_WCTR))
  pr_err("Can't reactivate %s port\n", port_name);





 i8042_interrupt(0, ((void*)0));
}
