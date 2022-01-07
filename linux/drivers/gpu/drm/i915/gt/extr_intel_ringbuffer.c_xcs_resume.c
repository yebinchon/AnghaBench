
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ring {int head; int tail; int vma; int size; } ;
struct TYPE_2__ {struct intel_ring* ring; } ;
struct intel_engine_cs {int uncore; int name; int mmio_base; TYPE_1__ legacy; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int,int,int,int) ;
 int DRM_ERROR (char*,int ,int,int,int,int,...) ;
 int EIO ;
 int ENGINE_POSTING_READ (struct intel_engine_cs*,int (*) (int )) ;
 int ENGINE_READ (struct intel_engine_cs*,int (*) (int )) ;
 int ENGINE_WRITE (struct intel_engine_cs*,int (*) (int ),int) ;
 int FORCEWAKE_ALL ;
 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ,int,int) ;
 scalar_t__ HWS_NEEDS_PHYSICAL (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int RING_CTL (int ) ;
 int RING_CTL_SIZE (int ) ;
 int RING_HEAD (int ) ;
 int RING_MI_MODE (int ) ;
 int RING_START (int ) ;
 int RING_TAIL (int ) ;
 int RING_VALID ;
 int STOP_RING ;
 int _MASKED_BIT_DISABLE (int ) ;
 int i915_ggtt_offset (int ) ;
 int intel_engine_queue_breadcrumbs (struct intel_engine_cs*) ;
 int intel_engine_reset_breadcrumbs (struct intel_engine_cs*) ;
 int intel_ring_offset_valid (struct intel_ring*,int) ;
 int intel_ring_update_space (struct intel_ring*) ;
 int intel_uncore_forcewake_get (int ,int ) ;
 int intel_uncore_forcewake_put (int ,int ) ;
 scalar_t__ intel_wait_for_register (int ,int ,int,int,int) ;
 int ring_setup_phys_status_page (struct intel_engine_cs*) ;
 int ring_setup_status_page (struct intel_engine_cs*) ;
 int stop_ring (struct intel_engine_cs*) ;

__attribute__((used)) static int xcs_resume(struct intel_engine_cs *engine)
{
 struct drm_i915_private *dev_priv = engine->i915;
 struct intel_ring *ring = engine->legacy.ring;
 int ret = 0;

 GEM_TRACE("%s: ring:{HEAD:%04x, TAIL:%04x}\n",
    engine->name, ring->head, ring->tail);

 intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);


 if (!stop_ring(engine)) {

  DRM_DEBUG_DRIVER("%s head not reset to zero "
    "ctl %08x head %08x tail %08x start %08x\n",
    engine->name,
    ENGINE_READ(engine, RING_CTL),
    ENGINE_READ(engine, RING_HEAD),
    ENGINE_READ(engine, RING_TAIL),
    ENGINE_READ(engine, RING_START));

  if (!stop_ring(engine)) {
   DRM_ERROR("failed to set %s head to zero "
      "ctl %08x head %08x tail %08x start %08x\n",
      engine->name,
      ENGINE_READ(engine, RING_CTL),
      ENGINE_READ(engine, RING_HEAD),
      ENGINE_READ(engine, RING_TAIL),
      ENGINE_READ(engine, RING_START));
   ret = -EIO;
   goto out;
  }
 }

 if (HWS_NEEDS_PHYSICAL(dev_priv))
  ring_setup_phys_status_page(engine);
 else
  ring_setup_status_page(engine);

 intel_engine_reset_breadcrumbs(engine);


 ENGINE_POSTING_READ(engine, RING_HEAD);







 ENGINE_WRITE(engine, RING_START, i915_ggtt_offset(ring->vma));


 GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->head));
 GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->tail));
 intel_ring_update_space(ring);


 ENGINE_WRITE(engine, RING_HEAD, ring->head);
 ENGINE_WRITE(engine, RING_TAIL, ring->head);
 ENGINE_POSTING_READ(engine, RING_TAIL);

 ENGINE_WRITE(engine, RING_CTL, RING_CTL_SIZE(ring->size) | RING_VALID);


 if (intel_wait_for_register(engine->uncore,
        RING_CTL(engine->mmio_base),
        RING_VALID, RING_VALID,
        50)) {
  DRM_ERROR("%s initialization failed "
     "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
     engine->name,
     ENGINE_READ(engine, RING_CTL),
     ENGINE_READ(engine, RING_CTL) & RING_VALID,
     ENGINE_READ(engine, RING_HEAD), ring->head,
     ENGINE_READ(engine, RING_TAIL), ring->tail,
     ENGINE_READ(engine, RING_START),
     i915_ggtt_offset(ring->vma));
  ret = -EIO;
  goto out;
 }

 if (INTEL_GEN(dev_priv) > 2)
  ENGINE_WRITE(engine,
        RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));


 if (ring->tail != ring->head) {
  ENGINE_WRITE(engine, RING_TAIL, ring->tail);
  ENGINE_POSTING_READ(engine, RING_TAIL);
 }


 intel_engine_queue_breadcrumbs(engine);
out:
 intel_uncore_forcewake_put(engine->uncore, FORCEWAKE_ALL);

 return ret;
}
