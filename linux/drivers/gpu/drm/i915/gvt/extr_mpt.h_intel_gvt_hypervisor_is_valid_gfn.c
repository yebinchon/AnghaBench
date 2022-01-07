
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {int handle; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* is_valid_gfn ) (int ,unsigned long) ;} ;


 TYPE_2__ intel_gvt_host ;
 int stub1 (int ,unsigned long) ;

__attribute__((used)) static inline bool intel_gvt_hypervisor_is_valid_gfn(
  struct intel_vgpu *vgpu, unsigned long gfn)
{
 if (!intel_gvt_host.mpt->is_valid_gfn)
  return 1;

 return intel_gvt_host.mpt->is_valid_gfn(vgpu->handle, gfn);
}
