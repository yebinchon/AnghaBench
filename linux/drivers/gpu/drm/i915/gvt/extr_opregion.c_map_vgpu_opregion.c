
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct intel_vgpu {int dummy; } ;
struct TYPE_2__ {int mapped; int * gfn; scalar_t__ va; } ;


 int EINVAL ;
 scalar_t__ INTEL_GVT_INVALID_ADDR ;
 int INTEL_GVT_OPREGION_PAGES ;
 int PAGE_SIZE ;
 int gvt_vgpu_err (char*,...) ;
 int intel_gvt_hypervisor_map_gfn_to_mfn (struct intel_vgpu*,int ,scalar_t__,int,int) ;
 scalar_t__ intel_gvt_hypervisor_virt_to_mfn (scalar_t__) ;
 TYPE_1__* vgpu_opregion (struct intel_vgpu*) ;

__attribute__((used)) static int map_vgpu_opregion(struct intel_vgpu *vgpu, bool map)
{
 u64 mfn;
 int i, ret;

 for (i = 0; i < INTEL_GVT_OPREGION_PAGES; i++) {
  mfn = intel_gvt_hypervisor_virt_to_mfn(vgpu_opregion(vgpu)->va
   + i * PAGE_SIZE);
  if (mfn == INTEL_GVT_INVALID_ADDR) {
   gvt_vgpu_err("fail to get MFN from VA\n");
   return -EINVAL;
  }
  ret = intel_gvt_hypervisor_map_gfn_to_mfn(vgpu,
    vgpu_opregion(vgpu)->gfn[i],
    mfn, 1, map);
  if (ret) {
   gvt_vgpu_err("fail to map GFN to MFN, errno: %d\n",
    ret);
   return ret;
  }
 }

 vgpu_opregion(vgpu)->mapped = map;

 return 0;
}
