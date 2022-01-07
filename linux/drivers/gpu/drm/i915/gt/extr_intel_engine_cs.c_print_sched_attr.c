
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_attr {scalar_t__ priority; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ I915_PRIORITY_INVALID ;
 scalar_t__ snprintf (char*,int,char*,scalar_t__) ;

__attribute__((used)) static int print_sched_attr(struct drm_i915_private *i915,
       const struct i915_sched_attr *attr,
       char *buf, int x, int len)
{
 if (attr->priority == I915_PRIORITY_INVALID)
  return x;

 x += snprintf(buf + x, len - x,
        " prio=%d", attr->priority);

 return x;
}
