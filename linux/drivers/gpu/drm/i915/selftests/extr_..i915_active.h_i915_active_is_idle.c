
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int count; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline bool
i915_active_is_idle(const struct i915_active *ref)
{
 return !atomic_read(&ref->count);
}
