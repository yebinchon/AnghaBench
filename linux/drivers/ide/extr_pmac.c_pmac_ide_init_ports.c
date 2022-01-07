
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ctl_addr; } ;
struct ide_hw {unsigned long* io_ports_array; TYPE_1__ io_ports; } ;



__attribute__((used)) static void pmac_ide_init_ports(struct ide_hw *hw, unsigned long base)
{
 int i;

 for (i = 0; i < 8; ++i)
  hw->io_ports_array[i] = base + i * 0x10;

 hw->io_ports.ctl_addr = base + 0x160;
}
