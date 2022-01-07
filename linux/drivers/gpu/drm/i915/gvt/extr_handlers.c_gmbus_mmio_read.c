
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int intel_gvt_i2c_handle_gmbus_read (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int gmbus_mmio_read(struct intel_vgpu *vgpu, unsigned int offset,
  void *p_data, unsigned int bytes)
{
 return intel_gvt_i2c_handle_gmbus_read(vgpu, offset, p_data, bytes);
}
