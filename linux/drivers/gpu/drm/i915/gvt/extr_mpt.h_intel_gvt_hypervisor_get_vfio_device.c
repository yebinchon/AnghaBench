
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* get_vfio_device ) (struct intel_vgpu*) ;} ;


 TYPE_2__ intel_gvt_host ;
 int stub1 (struct intel_vgpu*) ;

__attribute__((used)) static inline int intel_gvt_hypervisor_get_vfio_device(struct intel_vgpu *vgpu)
{
 if (!intel_gvt_host.mpt->get_vfio_device)
  return 0;

 return intel_gvt_host.mpt->get_vfio_device(vgpu);
}
