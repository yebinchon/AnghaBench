
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct intel_vgpu_gtt {TYPE_7__* scratch_pt; } ;
struct intel_vgpu {int id; TYPE_6__* gvt; struct intel_vgpu_gtt gtt; } ;
struct intel_gvt_gtt_pte_ops {int (* set_entry ) (void*,struct intel_gvt_gtt_entry*,int,int,int ,struct intel_vgpu*) ;int (* set_pfn ) (struct intel_gvt_gtt_entry*,unsigned long) ;} ;
struct intel_gvt_gtt_entry {int val64; int type; } ;
struct device {int dummy; } ;
typedef enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;
typedef int dma_addr_t ;
struct TYPE_14__ {unsigned long page_mfn; int page; } ;
struct TYPE_9__ {int gtt_entry_size_shift; } ;
struct TYPE_8__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_13__ {TYPE_5__* dev_priv; TYPE_2__ device_info; TYPE_1__ gtt; } ;
struct TYPE_11__ {TYPE_3__* pdev; } ;
struct TYPE_12__ {TYPE_4__ drm; } ;
struct TYPE_10__ {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GTT_TYPE_MAX ;
 int GTT_TYPE_PPGTT_PDE_PT ;
 int GTT_TYPE_PPGTT_PTE_PT ;
 int I915_GTT_PAGE_SHIFT ;
 int I915_GTT_PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int PPAT_CACHED ;
 scalar_t__ WARN_ON (int) ;
 int _PAGE_PRESENT ;
 int _PAGE_RW ;
 int __free_page (int ) ;
 int dma_map_page (struct device*,int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int) ;
 int get_entry_type (int) ;
 scalar_t__ get_zeroed_page (int ) ;
 int gvt_dbg_mm (char*,int ,int,unsigned long) ;
 int gvt_vgpu_err (char*) ;
 int memset (struct intel_gvt_gtt_entry*,int ,int) ;
 int stub1 (struct intel_gvt_gtt_entry*,unsigned long) ;
 int stub2 (void*,struct intel_gvt_gtt_entry*,int,int,int ,struct intel_vgpu*) ;
 int virt_to_page (void*) ;

__attribute__((used)) static int alloc_scratch_pages(struct intel_vgpu *vgpu,
  enum intel_gvt_gtt_type type)
{
 struct intel_vgpu_gtt *gtt = &vgpu->gtt;
 struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
 int page_entry_num = I915_GTT_PAGE_SIZE >>
    vgpu->gvt->device_info.gtt_entry_size_shift;
 void *scratch_pt;
 int i;
 struct device *dev = &vgpu->gvt->dev_priv->drm.pdev->dev;
 dma_addr_t daddr;

 if (WARN_ON(type < GTT_TYPE_PPGTT_PTE_PT || type >= GTT_TYPE_MAX))
  return -EINVAL;

 scratch_pt = (void *)get_zeroed_page(GFP_KERNEL);
 if (!scratch_pt) {
  gvt_vgpu_err("fail to allocate scratch page\n");
  return -ENOMEM;
 }

 daddr = dma_map_page(dev, virt_to_page(scratch_pt), 0,
   4096, PCI_DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dev, daddr)) {
  gvt_vgpu_err("fail to dmamap scratch_pt\n");
  __free_page(virt_to_page(scratch_pt));
  return -ENOMEM;
 }
 gtt->scratch_pt[type].page_mfn =
  (unsigned long)(daddr >> I915_GTT_PAGE_SHIFT);
 gtt->scratch_pt[type].page = virt_to_page(scratch_pt);
 gvt_dbg_mm("vgpu%d create scratch_pt: type %d mfn=0x%lx\n",
   vgpu->id, type, gtt->scratch_pt[type].page_mfn);
 if (type > GTT_TYPE_PPGTT_PTE_PT) {
  struct intel_gvt_gtt_entry se;

  memset(&se, 0, sizeof(struct intel_gvt_gtt_entry));
  se.type = get_entry_type(type - 1);
  ops->set_pfn(&se, gtt->scratch_pt[type - 1].page_mfn);




  se.val64 |= _PAGE_PRESENT | _PAGE_RW;
  if (type == GTT_TYPE_PPGTT_PDE_PT)
   se.val64 |= PPAT_CACHED;

  for (i = 0; i < page_entry_num; i++)
   ops->set_entry(scratch_pt, &se, i, 0, 0, vgpu);
 }

 return 0;
}
