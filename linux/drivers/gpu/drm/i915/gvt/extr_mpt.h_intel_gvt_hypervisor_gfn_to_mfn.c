
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {int handle; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {unsigned long (* gfn_to_mfn ) (int ,unsigned long) ;} ;


 TYPE_2__ intel_gvt_host ;
 unsigned long stub1 (int ,unsigned long) ;

__attribute__((used)) static inline unsigned long intel_gvt_hypervisor_gfn_to_mfn(
  struct intel_vgpu *vgpu, unsigned long gfn)
{
 return intel_gvt_host.mpt->gfn_to_mfn(vgpu->handle, gfn);
}
