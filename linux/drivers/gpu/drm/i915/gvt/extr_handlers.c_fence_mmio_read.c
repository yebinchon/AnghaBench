
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int offset_to_fence_num (unsigned int) ;
 int read_vreg (struct intel_vgpu*,unsigned int,void*,unsigned int) ;
 int sanitize_fence_mmio_access (struct intel_vgpu*,int ,void*,unsigned int) ;

__attribute__((used)) static int fence_mmio_read(struct intel_vgpu *vgpu, unsigned int off,
  void *p_data, unsigned int bytes)
{
 int ret;

 ret = sanitize_fence_mmio_access(vgpu, offset_to_fence_num(off),
   p_data, bytes);
 if (ret)
  return ret;
 read_vreg(vgpu, off, p_data, bytes);
 return 0;
}
