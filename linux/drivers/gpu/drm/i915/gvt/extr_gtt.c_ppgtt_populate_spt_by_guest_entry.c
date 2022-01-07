
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int type; int vaddr; } ;
struct TYPE_7__ {int pde_ips; int gfn; } ;
struct intel_vgpu_ppgtt_spt {TYPE_4__ shadow_page; TYPE_3__ guest_page; } ;
struct intel_vgpu {int id; TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {int (* get_pfn ) (struct intel_gvt_gtt_entry*) ;scalar_t__ (* test_ips ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int type; int val64; } ;
struct TYPE_5__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_6__ {TYPE_1__ gtt; } ;


 int EINVAL ;
 struct intel_vgpu_ppgtt_spt* ERR_PTR (int) ;
 int GEM_BUG_ON (int) ;
 int GTT_TYPE_PPGTT_PDE_ENTRY ;
 scalar_t__ IS_ERR (struct intel_vgpu_ppgtt_spt*) ;
 int PTR_ERR (struct intel_vgpu_ppgtt_spt*) ;
 int clear_page (int ) ;
 int get_next_pt_type (int ) ;
 int gtt_type_is_pt (int) ;
 int gvt_dbg_mm (char*) ;
 int gvt_vgpu_err (char*,struct intel_vgpu_ppgtt_spt*,int ,int ) ;
 int intel_vgpu_enable_page_track (struct intel_vgpu*,int ) ;
 struct intel_vgpu_ppgtt_spt* intel_vgpu_find_spt_by_gfn (struct intel_vgpu*,int ) ;
 struct intel_vgpu_ppgtt_spt* ppgtt_alloc_spt_gfn (struct intel_vgpu*,int,int ,int) ;
 int ppgtt_free_spt (struct intel_vgpu_ppgtt_spt*) ;
 int ppgtt_get_spt (struct intel_vgpu_ppgtt_spt*) ;
 int ppgtt_populate_spt (struct intel_vgpu_ppgtt_spt*) ;
 int ppgtt_put_spt (struct intel_vgpu_ppgtt_spt*) ;
 scalar_t__ stub1 (struct intel_gvt_gtt_entry*) ;
 int stub2 (struct intel_gvt_gtt_entry*) ;
 int stub3 (struct intel_gvt_gtt_entry*) ;
 int trace_spt_change (int ,char*,struct intel_vgpu_ppgtt_spt*,int ,int ) ;
 scalar_t__ vgpu_ips_enabled (struct intel_vgpu*) ;

__attribute__((used)) static struct intel_vgpu_ppgtt_spt *ppgtt_populate_spt_by_guest_entry(
  struct intel_vgpu *vgpu, struct intel_gvt_gtt_entry *we)
{
 struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
 struct intel_vgpu_ppgtt_spt *spt = ((void*)0);
 bool ips = 0;
 int ret;

 GEM_BUG_ON(!gtt_type_is_pt(get_next_pt_type(we->type)));

 if (we->type == GTT_TYPE_PPGTT_PDE_ENTRY)
  ips = vgpu_ips_enabled(vgpu) && ops->test_ips(we);

 spt = intel_vgpu_find_spt_by_gfn(vgpu, ops->get_pfn(we));
 if (spt) {
  ppgtt_get_spt(spt);

  if (ips != spt->guest_page.pde_ips) {
   spt->guest_page.pde_ips = ips;

   gvt_dbg_mm("reshadow PDE since ips changed\n");
   clear_page(spt->shadow_page.vaddr);
   ret = ppgtt_populate_spt(spt);
   if (ret) {
    ppgtt_put_spt(spt);
    goto err;
   }
  }
 } else {
  int type = get_next_pt_type(we->type);

  if (!gtt_type_is_pt(type)) {
   ret = -EINVAL;
   goto err;
  }

  spt = ppgtt_alloc_spt_gfn(vgpu, type, ops->get_pfn(we), ips);
  if (IS_ERR(spt)) {
   ret = PTR_ERR(spt);
   goto err;
  }

  ret = intel_vgpu_enable_page_track(vgpu, spt->guest_page.gfn);
  if (ret)
   goto err_free_spt;

  ret = ppgtt_populate_spt(spt);
  if (ret)
   goto err_free_spt;

  trace_spt_change(vgpu->id, "new", spt, spt->guest_page.gfn,
     spt->shadow_page.type);
 }
 return spt;

err_free_spt:
 ppgtt_free_spt(spt);
 spt = ((void*)0);
err:
 gvt_vgpu_err("fail: shadow page %p guest entry 0x%llx type %d\n",
       spt, we->val64, we->type);
 return ERR_PTR(ret);
}
