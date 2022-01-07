
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int id; } ;


 int PS_PLANE_SEL_MASK ;
 int WARN_ONCE (int,char*,int ) ;
 unsigned int _PS_1A_CTRL ;
 unsigned int _PS_1B_CTRL ;
 unsigned int _PS_1C_CTRL ;
 unsigned int _PS_2A_CTRL ;
 unsigned int _PS_2B_CTRL ;
 int intel_vgpu_default_mmio_write (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int pf_write(struct intel_vgpu *vgpu,
  unsigned int offset, void *p_data, unsigned int bytes)
{
 u32 val = *(u32 *)p_data;

 if ((offset == _PS_1A_CTRL || offset == _PS_2A_CTRL ||
    offset == _PS_1B_CTRL || offset == _PS_2B_CTRL ||
    offset == _PS_1C_CTRL) && (val & PS_PLANE_SEL_MASK) != 0) {
  WARN_ONCE(1, "VM(%d): guest is trying to scaling a plane\n",
     vgpu->id);
  return 0;
 }

 return intel_vgpu_default_mmio_write(vgpu, offset, p_data, bytes);
}
