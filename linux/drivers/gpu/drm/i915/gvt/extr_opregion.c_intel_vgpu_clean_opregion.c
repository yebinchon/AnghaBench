
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {int id; } ;
struct TYPE_4__ {scalar_t__ hypervisor_type; } ;
struct TYPE_3__ {int * va; scalar_t__ mapped; } ;


 scalar_t__ INTEL_GVT_HYPERVISOR_KVM ;
 scalar_t__ INTEL_GVT_HYPERVISOR_XEN ;
 int INTEL_GVT_OPREGION_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int gvt_dbg_core (char*,int ) ;
 TYPE_2__ intel_gvt_host ;
 int map_vgpu_opregion (struct intel_vgpu*,int) ;
 TYPE_1__* vgpu_opregion (struct intel_vgpu*) ;

void intel_vgpu_clean_opregion(struct intel_vgpu *vgpu)
{
 gvt_dbg_core("vgpu%d: clean vgpu opregion\n", vgpu->id);

 if (!vgpu_opregion(vgpu)->va)
  return;

 if (intel_gvt_host.hypervisor_type == INTEL_GVT_HYPERVISOR_XEN) {
  if (vgpu_opregion(vgpu)->mapped)
   map_vgpu_opregion(vgpu, 0);
 } else if (intel_gvt_host.hypervisor_type == INTEL_GVT_HYPERVISOR_KVM) {

 }
 free_pages((unsigned long)vgpu_opregion(vgpu)->va,
     get_order(INTEL_GVT_OPREGION_SIZE));

 vgpu_opregion(vgpu)->va = ((void*)0);

}
