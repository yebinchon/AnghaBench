
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_pmu {struct attribute** pmu_attr; struct attribute** i915_attr; } ;
struct attribute {struct attribute** name; } ;
struct TYPE_2__ {struct attribute** attrs; } ;


 TYPE_1__ i915_pmu_events_attr_group ;
 int kfree (struct attribute**) ;

__attribute__((used)) static void free_event_attributes(struct i915_pmu *pmu)
{
 struct attribute **attr_iter = i915_pmu_events_attr_group.attrs;

 for (; *attr_iter; attr_iter++)
  kfree((*attr_iter)->name);

 kfree(i915_pmu_events_attr_group.attrs);
 kfree(pmu->i915_attr);
 kfree(pmu->pmu_attr);

 i915_pmu_events_attr_group.attrs = ((void*)0);
 pmu->i915_attr = ((void*)0);
 pmu->pmu_attr = ((void*)0);
}
