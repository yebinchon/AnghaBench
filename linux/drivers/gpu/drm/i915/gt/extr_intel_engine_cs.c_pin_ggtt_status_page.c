
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int i915; } ;
struct i915_vma {int dummy; } ;


 int HAS_LLC (int ) ;
 unsigned int PIN_GLOBAL ;
 unsigned int PIN_HIGH ;
 unsigned int PIN_MAPPABLE ;
 int i915_vma_pin (struct i915_vma*,int ,int ,unsigned int) ;

__attribute__((used)) static int pin_ggtt_status_page(struct intel_engine_cs *engine,
    struct i915_vma *vma)
{
 unsigned int flags;

 flags = PIN_GLOBAL;
 if (!HAS_LLC(engine->i915))
  flags |= PIN_MAPPABLE;
 else
  flags |= PIN_HIGH;

 return i915_vma_pin(vma, 0, 0, flags);
}
