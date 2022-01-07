
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfax_hw {scalar_t__ cfg; int aux_data; int name; } ;


 int SFAX_PCI_RESET_OFF ;
 int SFAX_PCI_RESET_ON ;
 scalar_t__ TIGER_AUX_DATA ;
 int TIGER_EXTERN_RESET_OFF ;
 int TIGER_EXTERN_RESET_ON ;
 scalar_t__ TIGER_RESET_ADDR ;
 int mdelay (int) ;
 int outb (int ,scalar_t__) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void
reset_speedfax(struct sfax_hw *sf)
{

 pr_debug("%s: resetting card\n", sf->name);
 outb(TIGER_EXTERN_RESET_ON, sf->cfg + TIGER_RESET_ADDR);
 outb(SFAX_PCI_RESET_ON, sf->cfg + TIGER_AUX_DATA);
 mdelay(1);
 outb(TIGER_EXTERN_RESET_OFF, sf->cfg + TIGER_RESET_ADDR);
 sf->aux_data = SFAX_PCI_RESET_OFF;
 outb(sf->aux_data, sf->cfg + TIGER_AUX_DATA);
 mdelay(1);
}
