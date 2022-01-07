
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int * subslice_7eu; } ;
struct TYPE_4__ {TYPE_1__ sseu; } ;


 int GEN7_GT_MODE ;
 int GEN9_IZ_HASHING (int,scalar_t__) ;
 int GEN9_IZ_HASHING_MASK (int) ;
 TYPE_2__* RUNTIME_INFO (struct drm_i915_private*) ;
 int WA_SET_FIELD_MASKED (int ,int,int) ;
 scalar_t__ ffs (int ) ;
 int is_power_of_2 (int ) ;

__attribute__((used)) static void skl_tune_iz_hashing(struct intel_engine_cs *engine,
    struct i915_wa_list *wal)
{
 struct drm_i915_private *i915 = engine->i915;
 u8 vals[3] = { 0, 0, 0 };
 unsigned int i;

 for (i = 0; i < 3; i++) {
  u8 ss;





  if (!is_power_of_2(RUNTIME_INFO(i915)->sseu.subslice_7eu[i]))
   continue;







  ss = ffs(RUNTIME_INFO(i915)->sseu.subslice_7eu[i]) - 1;
  vals[i] = 3 - ss;
 }

 if (vals[0] == 0 && vals[1] == 0 && vals[2] == 0)
  return;


 WA_SET_FIELD_MASKED(GEN7_GT_MODE,
       GEN9_IZ_HASHING_MASK(2) |
       GEN9_IZ_HASHING_MASK(1) |
       GEN9_IZ_HASHING_MASK(0),
       GEN9_IZ_HASHING(2, vals[2]) |
       GEN9_IZ_HASHING(1, vals[1]) |
       GEN9_IZ_HASHING(0, vals[0]));
}
