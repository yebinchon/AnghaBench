
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int registered_clients; scalar_t__ handler; int active; } ;


 TYPE_1__ vgasr_priv ;

__attribute__((used)) static bool vga_switcheroo_ready(void)
{

 return !vgasr_priv.active &&
        vgasr_priv.registered_clients == 2 && vgasr_priv.handler;
}
