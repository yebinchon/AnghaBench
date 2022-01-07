
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_engine_cs {int class; int instance; int i915; struct intel_uncore* uncore; } ;
typedef int i915_reg_t ;
struct TYPE_2__ {int vdbox_sfc_access; } ;


 int BIT (int ) ;
 int DRM_DEBUG_DRIVER (char*) ;
 int GEN11_VCS_SFC_FORCED_LOCK (struct intel_engine_cs*) ;
 int GEN11_VCS_SFC_FORCED_LOCK_BIT ;
 int GEN11_VCS_SFC_LOCK_ACK_BIT ;
 int GEN11_VCS_SFC_LOCK_STATUS (struct intel_engine_cs*) ;
 int GEN11_VCS_SFC_RESET_BIT (int ) ;
 int GEN11_VCS_SFC_USAGE_BIT ;
 int GEN11_VECS_SFC_FORCED_LOCK (struct intel_engine_cs*) ;
 int GEN11_VECS_SFC_FORCED_LOCK_BIT ;
 int GEN11_VECS_SFC_LOCK_ACK (struct intel_engine_cs*) ;
 int GEN11_VECS_SFC_LOCK_ACK_BIT ;
 int GEN11_VECS_SFC_RESET_BIT (int ) ;
 int GEN11_VECS_SFC_USAGE (struct intel_engine_cs*) ;
 int GEN11_VECS_SFC_USAGE_BIT ;
 TYPE_1__* RUNTIME_INFO (int ) ;


 scalar_t__ __intel_wait_for_register_fw (struct intel_uncore*,int ,int,int,int,int ,int *) ;
 int intel_uncore_read_fw (struct intel_uncore*,int ) ;
 int rmw_set_fw (struct intel_uncore*,int ,int) ;

__attribute__((used)) static u32 gen11_lock_sfc(struct intel_engine_cs *engine)
{
 struct intel_uncore *uncore = engine->uncore;
 u8 vdbox_sfc_access = RUNTIME_INFO(engine->i915)->vdbox_sfc_access;
 i915_reg_t sfc_forced_lock, sfc_forced_lock_ack;
 u32 sfc_forced_lock_bit, sfc_forced_lock_ack_bit;
 i915_reg_t sfc_usage;
 u32 sfc_usage_bit;
 u32 sfc_reset_bit;

 switch (engine->class) {
 case 129:
  if ((BIT(engine->instance) & vdbox_sfc_access) == 0)
   return 0;

  sfc_forced_lock = GEN11_VCS_SFC_FORCED_LOCK(engine);
  sfc_forced_lock_bit = GEN11_VCS_SFC_FORCED_LOCK_BIT;

  sfc_forced_lock_ack = GEN11_VCS_SFC_LOCK_STATUS(engine);
  sfc_forced_lock_ack_bit = GEN11_VCS_SFC_LOCK_ACK_BIT;

  sfc_usage = GEN11_VCS_SFC_LOCK_STATUS(engine);
  sfc_usage_bit = GEN11_VCS_SFC_USAGE_BIT;
  sfc_reset_bit = GEN11_VCS_SFC_RESET_BIT(engine->instance);
  break;

 case 128:
  sfc_forced_lock = GEN11_VECS_SFC_FORCED_LOCK(engine);
  sfc_forced_lock_bit = GEN11_VECS_SFC_FORCED_LOCK_BIT;

  sfc_forced_lock_ack = GEN11_VECS_SFC_LOCK_ACK(engine);
  sfc_forced_lock_ack_bit = GEN11_VECS_SFC_LOCK_ACK_BIT;

  sfc_usage = GEN11_VECS_SFC_USAGE(engine);
  sfc_usage_bit = GEN11_VECS_SFC_USAGE_BIT;
  sfc_reset_bit = GEN11_VECS_SFC_RESET_BIT(engine->instance);
  break;

 default:
  return 0;
 }
 rmw_set_fw(uncore, sfc_forced_lock, sfc_forced_lock_bit);

 if (__intel_wait_for_register_fw(uncore,
      sfc_forced_lock_ack,
      sfc_forced_lock_ack_bit,
      sfc_forced_lock_ack_bit,
      1000, 0, ((void*)0))) {
  DRM_DEBUG_DRIVER("Wait for SFC forced lock ack failed\n");
  return 0;
 }

 if (intel_uncore_read_fw(uncore, sfc_usage) & sfc_usage_bit)
  return sfc_reset_bit;

 return 0;
}
