
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_reset {int flags; } ;


 int I915_WEDGED ;
 int test_bit (int ,int *) ;
 int unlikely (int ) ;

__attribute__((used)) static inline bool __intel_reset_failed(const struct intel_reset *reset)
{
 return unlikely(test_bit(I915_WEDGED, &reset->flags));
}
