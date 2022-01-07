
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int write_vreg (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

int intel_vgpu_default_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
  void *p_data, unsigned int bytes)
{
 write_vreg(vgpu, offset, p_data, bytes);
 return 0;
}
