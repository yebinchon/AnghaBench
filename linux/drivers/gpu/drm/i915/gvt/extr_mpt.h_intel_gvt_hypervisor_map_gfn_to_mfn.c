
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {int handle; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* map_gfn_to_mfn ) (int ,unsigned long,unsigned long,unsigned int,int) ;} ;


 TYPE_2__ intel_gvt_host ;
 int stub1 (int ,unsigned long,unsigned long,unsigned int,int) ;

__attribute__((used)) static inline int intel_gvt_hypervisor_map_gfn_to_mfn(
  struct intel_vgpu *vgpu, unsigned long gfn,
  unsigned long mfn, unsigned int nr,
  bool map)
{

 if (!intel_gvt_host.mpt->map_gfn_to_mfn)
  return 0;

 return intel_gvt_host.mpt->map_gfn_to_mfn(vgpu->handle, gfn, mfn, nr,
        map);
}
