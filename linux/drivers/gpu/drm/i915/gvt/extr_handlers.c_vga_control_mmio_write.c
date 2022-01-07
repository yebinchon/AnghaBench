
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int id; } ;


 int VGA_DISP_DISABLE ;
 int gvt_dbg_core (char*,int ,char*) ;
 int vgpu_vreg (struct intel_vgpu*,unsigned int) ;
 int write_vreg (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int vga_control_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
  void *p_data, unsigned int bytes)
{
 bool vga_disable;

 write_vreg(vgpu, offset, p_data, bytes);
 vga_disable = vgpu_vreg(vgpu, offset) & VGA_DISP_DISABLE;

 gvt_dbg_core("vgpu%d: %s VGA mode\n", vgpu->id,
   vga_disable ? "Disable" : "Enable");
 return 0;
}
