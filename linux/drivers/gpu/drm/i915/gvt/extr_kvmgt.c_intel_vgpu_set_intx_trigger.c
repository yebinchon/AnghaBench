
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int dummy; } ;



__attribute__((used)) static int intel_vgpu_set_intx_trigger(struct intel_vgpu *vgpu,
  unsigned int index, unsigned int start, unsigned int count,
  u32 flags, void *data)
{
 return 0;
}
