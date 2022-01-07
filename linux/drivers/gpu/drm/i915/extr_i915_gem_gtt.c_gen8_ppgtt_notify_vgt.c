
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {struct drm_i915_private* i915; } ;
struct i915_ppgtt {int pd; TYPE_3__ vm; } ;
struct TYPE_4__ {int lock; } ;
struct drm_i915_private {TYPE_1__ vgpu; } ;
typedef enum vgt_g2v_type { ____Placeholder_vgt_g2v_type } vgt_g2v_type ;
struct TYPE_5__ {int hi; int lo; } ;


 int GEN8_3LVL_PDPES ;
 int I915_WRITE (int ,int) ;
 int VGT_G2V_PPGTT_L3_PAGE_TABLE_CREATE ;
 int VGT_G2V_PPGTT_L3_PAGE_TABLE_DESTROY ;
 int VGT_G2V_PPGTT_L4_PAGE_TABLE_CREATE ;
 int VGT_G2V_PPGTT_L4_PAGE_TABLE_DESTROY ;
 int atomic_dec (int ) ;
 int atomic_inc (int ) ;
 int g2v_notify ;
 int i915_page_dir_dma_addr (struct i915_ppgtt*,int) ;
 scalar_t__ i915_vm_is_4lvl (TYPE_3__*) ;
 int lower_32_bits (int const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* pdp ;
 int px_dma (int ) ;
 int px_used (int ) ;
 int upper_32_bits (int const) ;
 int vgtif_reg (int ) ;

__attribute__((used)) static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
{
 struct drm_i915_private *dev_priv = ppgtt->vm.i915;
 enum vgt_g2v_type msg;
 int i;

 if (create)
  atomic_inc(px_used(ppgtt->pd));
 else
  atomic_dec(px_used(ppgtt->pd));

 mutex_lock(&dev_priv->vgpu.lock);

 if (i915_vm_is_4lvl(&ppgtt->vm)) {
  const u64 daddr = px_dma(ppgtt->pd);

  I915_WRITE(vgtif_reg(pdp[0].lo), lower_32_bits(daddr));
  I915_WRITE(vgtif_reg(pdp[0].hi), upper_32_bits(daddr));

  msg = (create ? VGT_G2V_PPGTT_L4_PAGE_TABLE_CREATE :
    VGT_G2V_PPGTT_L4_PAGE_TABLE_DESTROY);
 } else {
  for (i = 0; i < GEN8_3LVL_PDPES; i++) {
   const u64 daddr = i915_page_dir_dma_addr(ppgtt, i);

   I915_WRITE(vgtif_reg(pdp[i].lo), lower_32_bits(daddr));
   I915_WRITE(vgtif_reg(pdp[i].hi), upper_32_bits(daddr));
  }

  msg = (create ? VGT_G2V_PPGTT_L3_PAGE_TABLE_CREATE :
    VGT_G2V_PPGTT_L3_PAGE_TABLE_DESTROY);
 }


 I915_WRITE(vgtif_reg(g2v_notify), msg);

 mutex_unlock(&dev_priv->vgpu.lock);
}
