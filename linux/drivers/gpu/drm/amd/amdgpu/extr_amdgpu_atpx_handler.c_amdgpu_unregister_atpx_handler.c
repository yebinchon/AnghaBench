
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vga_switcheroo_unregister_handler () ;

void amdgpu_unregister_atpx_handler(void)
{
 vga_switcheroo_unregister_handler();
}
