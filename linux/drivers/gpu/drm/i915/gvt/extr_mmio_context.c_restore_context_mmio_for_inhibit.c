
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_vgpu {int id; struct intel_gvt* gvt; } ;
struct TYPE_3__ {int* ctx_mmio_count; struct engine_mmio* mmio; } ;
struct intel_gvt {TYPE_1__ engine_mmio_list; } ;
struct i915_request {TYPE_2__* engine; } ;
struct engine_mmio {int ring_id; int mask; int reg; int in_context; } ;
struct TYPE_4__ {int id; int (* emit_flush ) (struct i915_request*,int ) ;} ;


 int EMIT_BARRIER ;
 scalar_t__ IS_ERR (int *) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 int MI_NOOP ;
 int PTR_ERR (int *) ;
 int gvt_dbg_core (char*,int ,int ,int ,int) ;
 int i915_mmio_reg_offset (int ) ;
 scalar_t__ i915_mmio_reg_valid (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 int stub1 (struct i915_request*,int ) ;
 int stub2 (struct i915_request*,int ) ;
 int vgpu_vreg_t (struct intel_vgpu*,int ) ;

__attribute__((used)) static int
restore_context_mmio_for_inhibit(struct intel_vgpu *vgpu,
     struct i915_request *req)
{
 u32 *cs;
 int ret;
 struct engine_mmio *mmio;
 struct intel_gvt *gvt = vgpu->gvt;
 int ring_id = req->engine->id;
 int count = gvt->engine_mmio_list.ctx_mmio_count[ring_id];

 if (count == 0)
  return 0;

 ret = req->engine->emit_flush(req, EMIT_BARRIER);
 if (ret)
  return ret;

 cs = intel_ring_begin(req, count * 2 + 2);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_LOAD_REGISTER_IMM(count);
 for (mmio = gvt->engine_mmio_list.mmio;
      i915_mmio_reg_valid(mmio->reg); mmio++) {
  if (mmio->ring_id != ring_id ||
      !mmio->in_context)
   continue;

  *cs++ = i915_mmio_reg_offset(mmio->reg);
  *cs++ = vgpu_vreg_t(vgpu, mmio->reg) |
    (mmio->mask << 16);
  gvt_dbg_core("add lri reg pair 0x%x:0x%x in inhibit ctx, vgpu:%d, rind_id:%d\n",
         *(cs-2), *(cs-1), vgpu->id, ring_id);
 }

 *cs++ = MI_NOOP;
 intel_ring_advance(req, cs);

 ret = req->engine->emit_flush(req, EMIT_BARRIER);
 if (ret)
  return ret;

 return 0;
}
