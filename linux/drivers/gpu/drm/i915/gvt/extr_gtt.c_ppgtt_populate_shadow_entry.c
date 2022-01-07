
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu_ppgtt_spt {int dummy; } ;
struct intel_vgpu {TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {unsigned long (* get_pfn ) (struct intel_gvt_gtt_entry*) ;int (* set_pfn ) (struct intel_gvt_gtt_entry*,int) ;int (* test_present ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int type; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_4__ {TYPE_1__ gtt; } ;


 int EINVAL ;
 int ENXIO ;
 int GEM_BUG_ON (int) ;




 unsigned long I915_GTT_PAGE_SIZE_2M ;
 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int gvt_vdbg_mm (char*) ;
 int gvt_vgpu_err (char*) ;
 int intel_gvt_hypervisor_dma_map_guest_page (struct intel_vgpu*,unsigned long,unsigned long,int*) ;
 int is_2MB_gtt_possible (struct intel_vgpu*,struct intel_gvt_gtt_entry*) ;
 int ppgtt_set_shadow_entry (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int split_2MB_gtt_entry (struct intel_vgpu*,struct intel_vgpu_ppgtt_spt*,unsigned long,struct intel_gvt_gtt_entry*) ;
 int split_64KB_gtt_entry (struct intel_vgpu*,struct intel_vgpu_ppgtt_spt*,unsigned long,struct intel_gvt_gtt_entry*) ;
 int stub1 (struct intel_gvt_gtt_entry*) ;
 unsigned long stub2 (struct intel_gvt_gtt_entry*) ;
 int stub3 (struct intel_gvt_gtt_entry*,int) ;

__attribute__((used)) static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 struct intel_vgpu_ppgtt_spt *spt, unsigned long index,
 struct intel_gvt_gtt_entry *ge)
{
 struct intel_gvt_gtt_pte_ops *pte_ops = vgpu->gvt->gtt.pte_ops;
 struct intel_gvt_gtt_entry se = *ge;
 unsigned long gfn, page_size = PAGE_SIZE;
 dma_addr_t dma_addr;
 int ret;

 if (!pte_ops->test_present(ge))
  return 0;

 gfn = pte_ops->get_pfn(ge);

 switch (ge->type) {
 case 129:
  gvt_vdbg_mm("shadow 4K gtt entry\n");
  break;
 case 128:
  gvt_vdbg_mm("shadow 64K gtt entry\n");





  return split_64KB_gtt_entry(vgpu, spt, index, &se);
 case 130:
  gvt_vdbg_mm("shadow 2M gtt entry\n");
  ret = is_2MB_gtt_possible(vgpu, ge);
  if (ret == 0)
   return split_2MB_gtt_entry(vgpu, spt, index, &se);
  else if (ret < 0)
   return ret;
  page_size = I915_GTT_PAGE_SIZE_2M;
  break;
 case 131:
  gvt_vgpu_err("GVT doesn't support 1GB entry\n");
  return -EINVAL;
 default:
  GEM_BUG_ON(1);
 };


 ret = intel_gvt_hypervisor_dma_map_guest_page(vgpu, gfn, page_size,
            &dma_addr);
 if (ret)
  return -ENXIO;

 pte_ops->set_pfn(&se, dma_addr >> PAGE_SHIFT);
 ppgtt_set_shadow_entry(spt, &se, index);
 return 0;
}
