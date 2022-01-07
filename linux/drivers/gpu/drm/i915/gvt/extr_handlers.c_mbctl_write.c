
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int dummy; } ;


 int GEN6_MBCTL_ENABLE_BOOT_FETCH ;
 int write_vreg (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int mbctl_write(struct intel_vgpu *vgpu, unsigned int offset,
  void *p_data, unsigned int bytes)
{
 *(u32 *)p_data &= (~GEN6_MBCTL_ENABLE_BOOT_FETCH);
 write_vreg(vgpu, offset, p_data, bytes);
 return 0;
}
