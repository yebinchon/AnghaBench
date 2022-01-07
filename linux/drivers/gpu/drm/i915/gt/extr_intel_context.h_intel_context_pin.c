
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int pin_count; } ;


 int __intel_context_do_pin (struct intel_context*) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline int intel_context_pin(struct intel_context *ce)
{
 if (likely(atomic_inc_not_zero(&ce->pin_count)))
  return 0;

 return __intel_context_do_pin(ce);
}
