
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {int handle; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* attach_vgpu ) (struct intel_vgpu*,int *) ;} ;


 TYPE_2__ intel_gvt_host ;
 int stub1 (struct intel_vgpu*,int *) ;

__attribute__((used)) static inline int intel_gvt_hypervisor_attach_vgpu(struct intel_vgpu *vgpu)
{

 if (!intel_gvt_host.mpt->attach_vgpu)
  return 0;

 return intel_gvt_host.mpt->attach_vgpu(vgpu, &vgpu->handle);
}
