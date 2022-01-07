
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int name; int mmio_base; struct intel_uncore* uncore; } ;
typedef int i915_reg_t ;


 int DRM_ERROR (char*,int ,int,int) ;
 int RESET_CTL_CAT_ERROR ;
 int RESET_CTL_READY_TO_RESET ;
 int RESET_CTL_REQUEST_RESET ;
 int RING_RESET_CTL (int ) ;
 int _MASKED_BIT_ENABLE (int) ;
 int __intel_wait_for_register_fw (struct intel_uncore*,int const,int,int,int,int ,int *) ;
 int intel_uncore_read_fw (struct intel_uncore*,int const) ;
 int intel_uncore_write_fw (struct intel_uncore*,int const,int ) ;

__attribute__((used)) static int gen8_engine_reset_prepare(struct intel_engine_cs *engine)
{
 struct intel_uncore *uncore = engine->uncore;
 const i915_reg_t reg = RING_RESET_CTL(engine->mmio_base);
 u32 request, mask, ack;
 int ret;

 ack = intel_uncore_read_fw(uncore, reg);
 if (ack & RESET_CTL_CAT_ERROR) {




  request = RESET_CTL_CAT_ERROR;
  mask = RESET_CTL_CAT_ERROR;


  ack = 0;
 } else if (!(ack & RESET_CTL_READY_TO_RESET)) {
  request = RESET_CTL_REQUEST_RESET;
  mask = RESET_CTL_READY_TO_RESET;
  ack = RESET_CTL_READY_TO_RESET;
 } else {
  return 0;
 }

 intel_uncore_write_fw(uncore, reg, _MASKED_BIT_ENABLE(request));
 ret = __intel_wait_for_register_fw(uncore, reg, mask, ack,
        700, 0, ((void*)0));
 if (ret)
  DRM_ERROR("%s reset request timed out: {request: %08x, RESET_CTL: %08x}\n",
     engine->name, request,
     intel_uncore_read_fw(uncore, reg));

 return ret;
}
