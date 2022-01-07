
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int virtual_ggtt; } ;
struct intel_vgpu_mm {TYPE_1__ ggtt_mm; int type; } ;
struct intel_vgpu {TYPE_3__* gvt; } ;
struct TYPE_5__ {int gtt_entry_size; } ;
struct TYPE_6__ {TYPE_2__ device_info; } ;


 int ENOMEM ;
 struct intel_vgpu_mm* ERR_PTR (int ) ;
 unsigned long I915_GTT_PAGE_SHIFT ;
 int INTEL_GVT_MM_GGTT ;
 int array_size (unsigned long,int ) ;
 unsigned long gvt_ggtt_gm_sz (TYPE_3__*) ;
 struct intel_vgpu_mm* vgpu_alloc_mm (struct intel_vgpu*) ;
 int vgpu_free_mm (struct intel_vgpu_mm*) ;
 int vzalloc (int ) ;

__attribute__((used)) static struct intel_vgpu_mm *intel_vgpu_create_ggtt_mm(struct intel_vgpu *vgpu)
{
 struct intel_vgpu_mm *mm;
 unsigned long nr_entries;

 mm = vgpu_alloc_mm(vgpu);
 if (!mm)
  return ERR_PTR(-ENOMEM);

 mm->type = INTEL_GVT_MM_GGTT;

 nr_entries = gvt_ggtt_gm_sz(vgpu->gvt) >> I915_GTT_PAGE_SHIFT;
 mm->ggtt_mm.virtual_ggtt =
  vzalloc(array_size(nr_entries,
       vgpu->gvt->device_info.gtt_entry_size));
 if (!mm->ggtt_mm.virtual_ggtt) {
  vgpu_free_mm(mm);
  return ERR_PTR(-ENOMEM);
 }

 return mm;
}
