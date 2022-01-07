
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int mmio_base; struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_KBL_REVID (struct drm_i915_private*,int ,int ) ;
 int KBL_REVID_A0 ;
 int KBL_REVID_E0 ;
 int RING_SEMA_WAIT_POLL (int ) ;
 int wa_write (struct i915_wa_list*,int ,int) ;

__attribute__((used)) static void
xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
{
 struct drm_i915_private *i915 = engine->i915;


 if (IS_KBL_REVID(i915, KBL_REVID_A0, KBL_REVID_E0)) {
  wa_write(wal,
    RING_SEMA_WAIT_POLL(engine->mmio_base),
    1);
 }
}
