
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i915_request {TYPE_2__* i915; } ;
struct TYPE_3__ {int ** remap_info; } ;
struct TYPE_4__ {TYPE_1__ l3_parity; } ;


 int GEN7_L3LOG (int,int) ;
 int GEN7_L3LOG_SIZE ;
 scalar_t__ IS_ERR (int *) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 int MI_NOOP ;
 int PTR_ERR (int *) ;
 int i915_mmio_reg_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int remap_l3_slice(struct i915_request *rq, int slice)
{
 u32 *cs, *remap_info = rq->i915->l3_parity.remap_info[slice];
 int i;

 if (!remap_info)
  return 0;

 cs = intel_ring_begin(rq, GEN7_L3LOG_SIZE/4 * 2 + 2);
 if (IS_ERR(cs))
  return PTR_ERR(cs);






 *cs++ = MI_LOAD_REGISTER_IMM(GEN7_L3LOG_SIZE/4);
 for (i = 0; i < GEN7_L3LOG_SIZE/4; i++) {
  *cs++ = i915_mmio_reg_offset(GEN7_L3LOG(slice, i));
  *cs++ = remap_info[i];
 }
 *cs++ = MI_NOOP;
 intel_ring_advance(rq, cs);

 return 0;
}
