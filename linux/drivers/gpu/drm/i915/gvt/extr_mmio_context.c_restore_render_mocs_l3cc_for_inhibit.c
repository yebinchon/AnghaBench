
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_vgpu {int id; } ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int id; } ;


 int GEN9_LNCFCMOCS (unsigned int) ;
 int GEN9_MOCS_SIZE ;
 scalar_t__ IS_ERR (int *) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 int MI_NOOP ;
 int PTR_ERR (int *) ;
 int gvt_dbg_core (char*,int ,int ,int ,int ) ;
 int i915_mmio_reg_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 int vgpu_vreg_t (struct intel_vgpu*,int ) ;

__attribute__((used)) static int
restore_render_mocs_l3cc_for_inhibit(struct intel_vgpu *vgpu,
         struct i915_request *req)
{
 unsigned int index;
 u32 *cs;

 cs = intel_ring_begin(req, 2 * GEN9_MOCS_SIZE / 2 + 2);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_LOAD_REGISTER_IMM(GEN9_MOCS_SIZE / 2);

 for (index = 0; index < GEN9_MOCS_SIZE / 2; index++) {
  *cs++ = i915_mmio_reg_offset(GEN9_LNCFCMOCS(index));
  *cs++ = vgpu_vreg_t(vgpu, GEN9_LNCFCMOCS(index));
  gvt_dbg_core("add lri reg pair 0x%x:0x%x in inhibit ctx, vgpu:%d, rind_id:%d\n",
         *(cs-2), *(cs-1), vgpu->id, req->engine->id);

 }

 *cs++ = MI_NOOP;
 intel_ring_advance(req, cs);

 return 0;
}
