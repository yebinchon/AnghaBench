
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_vgpu {int dummy; } ;
struct TYPE_4__ {int hypervisor_type; } ;
struct TYPE_3__ {int * gfn; int mapped; } ;


 int EINVAL ;


 int INTEL_GVT_OPREGION_PAGES ;
 int PAGE_SHIFT ;
 int gvt_dbg_core (char*) ;
 int gvt_vgpu_err (char*) ;
 TYPE_2__ intel_gvt_host ;
 int map_vgpu_opregion (struct intel_vgpu*,int) ;
 TYPE_1__* vgpu_opregion (struct intel_vgpu*) ;

int intel_vgpu_opregion_base_write_handler(struct intel_vgpu *vgpu, u32 gpa)
{

 int i, ret = 0;

 gvt_dbg_core("emulate opregion from kernel\n");

 switch (intel_gvt_host.hypervisor_type) {
 case 129:
  for (i = 0; i < INTEL_GVT_OPREGION_PAGES; i++)
   vgpu_opregion(vgpu)->gfn[i] = (gpa >> PAGE_SHIFT) + i;
  break;
 case 128:




  if (vgpu_opregion(vgpu)->mapped)
   map_vgpu_opregion(vgpu, 0);

  for (i = 0; i < INTEL_GVT_OPREGION_PAGES; i++)
   vgpu_opregion(vgpu)->gfn[i] = (gpa >> PAGE_SHIFT) + i;

  ret = map_vgpu_opregion(vgpu, 1);
  break;
 default:
  ret = -EINVAL;
  gvt_vgpu_err("not supported hypervisor\n");
 }

 return ret;
}
