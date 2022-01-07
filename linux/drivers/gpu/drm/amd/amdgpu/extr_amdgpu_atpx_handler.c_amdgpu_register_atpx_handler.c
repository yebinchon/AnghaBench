
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vga_switcheroo_handler_flags_t { ____Placeholder_vga_switcheroo_handler_flags_t } vga_switcheroo_handler_flags_t ;


 int amdgpu_atpx_detect () ;
 int amdgpu_atpx_handler ;
 int vga_switcheroo_register_handler (int *,int) ;

void amdgpu_register_atpx_handler(void)
{
 bool r;
 enum vga_switcheroo_handler_flags_t handler_flags = 0;


 r = amdgpu_atpx_detect();
 if (!r)
  return;

 vga_switcheroo_register_handler(&amdgpu_atpx_handler, handler_flags);
}
