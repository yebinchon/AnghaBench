
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
 int GEN11_VCS_SFC_FORCED_LOCK (struct intel_engine_cs*) ;
 int GEN11_VCS_SFC_FORCED_LOCK_BIT ;
 int GEN11_VECS_SFC_FORCED_LOCK (struct intel_engine_cs*) ;
 int GEN11_VECS_SFC_FORCED_LOCK_BIT ;
 TYPE_1__* RUNTIME_INFO (int ) ;


 int rmw_clear_fw (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void gen11_unlock_sfc(struct intel_engine_cs *engine)
{
 struct intel_uncore *uncore = engine->uncore;
 u8 vdbox_sfc_access = RUNTIME_INFO(engine->i915)->vdbox_sfc_access;
 i915_reg_t sfc_forced_lock;
 u32 sfc_forced_lock_bit;

 switch (engine->class) {
 case 129:
  if ((BIT(engine->instance) & vdbox_sfc_access) == 0)
   return;

  sfc_forced_lock = GEN11_VCS_SFC_FORCED_LOCK(engine);
  sfc_forced_lock_bit = GEN11_VCS_SFC_FORCED_LOCK_BIT;
  break;

 case 128:
  sfc_forced_lock = GEN11_VECS_SFC_FORCED_LOCK(engine);
  sfc_forced_lock_bit = GEN11_VECS_SFC_FORCED_LOCK_BIT;
  break;

 default:
  return;
 }

 rmw_clear_fw(uncore, sfc_forced_lock, sfc_forced_lock_bit);
}
