
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum vga_switcheroo_handler_flags_t { ____Placeholder_vga_switcheroo_handler_flags_t } vga_switcheroo_handler_flags_t ;
struct TYPE_2__ {int handler_flags; } ;


 TYPE_1__ vgasr_priv ;

enum vga_switcheroo_handler_flags_t vga_switcheroo_handler_flags(void)
{
 return vgasr_priv.handler_flags;
}
