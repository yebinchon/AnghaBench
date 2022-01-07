
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct intel_vgpu {int handle; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* set_trap_area ) (int ,int ,int ,int) ;} ;


 TYPE_2__ intel_gvt_host ;
 int stub1 (int ,int ,int ,int) ;

__attribute__((used)) static inline int intel_gvt_hypervisor_set_trap_area(
  struct intel_vgpu *vgpu, u64 start, u64 end, bool map)
{

 if (!intel_gvt_host.mpt->set_trap_area)
  return 0;

 return intel_gvt_host.mpt->set_trap_area(vgpu->handle, start, end, map);
}
