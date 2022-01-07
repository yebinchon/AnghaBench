
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VGA_PORT_HGSMI_HOST ;
 int outl (int ,int ) ;

__attribute__((used)) static void vbox_clear_irq(void)
{
 outl((u32)~0, VGA_PORT_HGSMI_HOST);
}
