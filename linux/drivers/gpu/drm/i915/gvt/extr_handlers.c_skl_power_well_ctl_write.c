
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_vgpu {TYPE_1__* gvt; } ;
struct TYPE_2__ {int dev_priv; } ;


 scalar_t__ IS_BROXTON (int ) ;
 int intel_vgpu_default_mmio_write (struct intel_vgpu*,unsigned int,int*,unsigned int) ;

__attribute__((used)) static int skl_power_well_ctl_write(struct intel_vgpu *vgpu,
  unsigned int offset, void *p_data, unsigned int bytes)
{
 u32 v = *(u32 *)p_data;

 if (IS_BROXTON(vgpu->gvt->dev_priv))
  v &= (1 << 31) | (1 << 29);
 else
  v &= (1 << 31) | (1 << 29) | (1 << 9) |
   (1 << 7) | (1 << 5) | (1 << 3) | (1 << 1);
 v |= (v >> 1);

 return intel_vgpu_default_mmio_write(vgpu, offset, &v, bytes);
}
