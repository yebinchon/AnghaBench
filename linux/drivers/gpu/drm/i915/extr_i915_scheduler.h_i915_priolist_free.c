
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_priolist {scalar_t__ priority; } ;


 scalar_t__ I915_PRIORITY_NORMAL ;
 int __i915_priolist_free (struct i915_priolist*) ;

__attribute__((used)) static inline void i915_priolist_free(struct i915_priolist *p)
{
 if (p->priority != I915_PRIORITY_NORMAL)
  __i915_priolist_free(p);
}
