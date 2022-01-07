
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int mocs_mmio_offset_list_cnt; int* mocs_mmio_offset_list; } ;
struct intel_gvt {TYPE_1__ engine_mmio_list; } ;
struct drm_i915_private {struct intel_gvt* gvt; } ;
struct TYPE_6__ {int reg; } ;
typedef TYPE_2__ i915_reg_t ;
struct TYPE_7__ {int initialized; void** l3cc_table; void*** control_table; } ;


 int GEN9_MOCS_SIZE ;
 int HAS_ENGINE (struct drm_i915_private*,int) ;
 void* I915_READ_FW (TYPE_2__) ;
 TYPE_3__ gen9_render_mocs ;

__attribute__((used)) static void load_render_mocs(struct drm_i915_private *dev_priv)
{
 struct intel_gvt *gvt = dev_priv->gvt;
 i915_reg_t offset;
 u32 cnt = gvt->engine_mmio_list.mocs_mmio_offset_list_cnt;
 u32 *regs = gvt->engine_mmio_list.mocs_mmio_offset_list;
 int ring_id, i;


 if (!regs)
  return;

 for (ring_id = 0; ring_id < cnt; ring_id++) {
  if (!HAS_ENGINE(dev_priv, ring_id))
   continue;
  offset.reg = regs[ring_id];
  for (i = 0; i < GEN9_MOCS_SIZE; i++) {
   gen9_render_mocs.control_table[ring_id][i] =
    I915_READ_FW(offset);
   offset.reg += 4;
  }
 }

 offset.reg = 0xb020;
 for (i = 0; i < GEN9_MOCS_SIZE / 2; i++) {
  gen9_render_mocs.l3cc_table[i] =
   I915_READ_FW(offset);
  offset.reg += 4;
 }
 gen9_render_mocs.initialized = 1;
}
