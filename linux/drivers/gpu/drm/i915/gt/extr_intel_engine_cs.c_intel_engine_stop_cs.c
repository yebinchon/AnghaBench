
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int name; int i915; int mmio_base; struct intel_uncore* uncore; } ;
typedef int i915_reg_t ;


 int ENODEV ;
 int ETIMEDOUT ;
 int GEM_TRACE (char*,int ) ;
 int INTEL_GEN (int ) ;
 int MODE_IDLE ;
 int RING_MI_MODE (int const) ;
 int STOP_RING ;
 int _MASKED_BIT_ENABLE (int ) ;
 scalar_t__ __intel_wait_for_register_fw (struct intel_uncore*,int const,int ,int ,int,int ,int *) ;
 int intel_uncore_posting_read_fw (struct intel_uncore*,int const) ;
 int intel_uncore_write_fw (struct intel_uncore*,int const,int ) ;

int intel_engine_stop_cs(struct intel_engine_cs *engine)
{
 struct intel_uncore *uncore = engine->uncore;
 const u32 base = engine->mmio_base;
 const i915_reg_t mode = RING_MI_MODE(base);
 int err;

 if (INTEL_GEN(engine->i915) < 3)
  return -ENODEV;

 GEM_TRACE("%s\n", engine->name);

 intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));

 err = 0;
 if (__intel_wait_for_register_fw(uncore,
      mode, MODE_IDLE, MODE_IDLE,
      1000, 0,
      ((void*)0))) {
  GEM_TRACE("%s: timed out on STOP_RING -> IDLE\n", engine->name);
  err = -ETIMEDOUT;
 }


 intel_uncore_posting_read_fw(uncore, mode);

 return err;
}
