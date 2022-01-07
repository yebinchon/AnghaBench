
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_2__ {int atpx; } ;


 int ATPX_DISCRETE_GPU ;
 int ATPX_INTEGRATED_GPU ;
 int VGA_SWITCHEROO_IGD ;
 TYPE_1__ amdgpu_atpx_priv ;
 int amdgpu_atpx_switch_disp_mux (int *,int ) ;
 int amdgpu_atpx_switch_end (int *,int ) ;
 int amdgpu_atpx_switch_i2c_mux (int *,int ) ;
 int amdgpu_atpx_switch_start (int *,int ) ;

__attribute__((used)) static int amdgpu_atpx_switchto(enum vga_switcheroo_client_id id)
{
 u16 gpu_id;

 if (id == VGA_SWITCHEROO_IGD)
  gpu_id = ATPX_INTEGRATED_GPU;
 else
  gpu_id = ATPX_DISCRETE_GPU;

 amdgpu_atpx_switch_start(&amdgpu_atpx_priv.atpx, gpu_id);
 amdgpu_atpx_switch_disp_mux(&amdgpu_atpx_priv.atpx, gpu_id);
 amdgpu_atpx_switch_i2c_mux(&amdgpu_atpx_priv.atpx, gpu_id);
 amdgpu_atpx_switch_end(&amdgpu_atpx_priv.atpx, gpu_id);

 return 0;
}
