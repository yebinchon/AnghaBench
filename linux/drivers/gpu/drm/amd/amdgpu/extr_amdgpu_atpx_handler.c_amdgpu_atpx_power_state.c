
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;
typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_2__ {int atpx; } ;


 int VGA_SWITCHEROO_IGD ;
 TYPE_1__ amdgpu_atpx_priv ;
 int amdgpu_atpx_set_discrete_state (int *,int) ;

__attribute__((used)) static int amdgpu_atpx_power_state(enum vga_switcheroo_client_id id,
       enum vga_switcheroo_state state)
{

 if (id == VGA_SWITCHEROO_IGD)
  return 0;

 amdgpu_atpx_set_discrete_state(&amdgpu_atpx_priv.atpx, state);
 return 0;
}
