
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i915_request {TYPE_1__* engine; int i915; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;
 int GEN7_SO_WRITE_OFFSET (int) ;
 scalar_t__ IS_ERR (int *) ;
 int IS_GEN (int ,int) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 scalar_t__ MI_NOOP ;
 int PTR_ERR (int *) ;
 scalar_t__ RCS0 ;
 int i915_mmio_reg_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
{
 u32 *cs;
 int i;

 if (!IS_GEN(rq->i915, 7) || rq->engine->id != RCS0) {
  DRM_DEBUG("sol reset is gen7/rcs only\n");
  return -EINVAL;
 }

 cs = intel_ring_begin(rq, 4 * 2 + 2);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_LOAD_REGISTER_IMM(4);
 for (i = 0; i < 4; i++) {
  *cs++ = i915_mmio_reg_offset(GEN7_SO_WRITE_OFFSET(i));
  *cs++ = 0;
 }
 *cs++ = MI_NOOP;
 intel_ring_advance(rq, cs);

 return 0;
}
