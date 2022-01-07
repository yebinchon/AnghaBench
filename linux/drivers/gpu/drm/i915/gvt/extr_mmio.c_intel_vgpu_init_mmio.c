
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vreg; } ;
struct intel_vgpu {TYPE_2__ mmio; TYPE_1__* gvt; } ;
struct intel_gvt_device_info {int mmio_size; } ;
struct TYPE_3__ {struct intel_gvt_device_info device_info; } ;


 int ENOMEM ;
 int intel_vgpu_reset_mmio (struct intel_vgpu*,int) ;
 int vzalloc (int ) ;

int intel_vgpu_init_mmio(struct intel_vgpu *vgpu)
{
 const struct intel_gvt_device_info *info = &vgpu->gvt->device_info;

 vgpu->mmio.vreg = vzalloc(info->mmio_size);
 if (!vgpu->mmio.vreg)
  return -ENOMEM;

 intel_vgpu_reset_mmio(vgpu, 1);

 return 0;
}
