
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int pin_count; } ;


 int GEM_BUG_ON (int) ;
 int atomic_inc (int *) ;
 int intel_context_is_pinned (struct intel_context*) ;

__attribute__((used)) static inline void __intel_context_pin(struct intel_context *ce)
{
 GEM_BUG_ON(!intel_context_is_pinned(ce));
 atomic_inc(&ce->pin_count);
}
