
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ I915_PRIORITY_NORMAL ;
 int max (scalar_t__,int) ;

__attribute__((used)) static inline bool i915_scheduler_need_preempt(int prio, int active)
{
 return prio > max(I915_PRIORITY_NORMAL - 1, active);
}
