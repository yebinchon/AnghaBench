
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * event_init; int event_idx; int read; int stop; int start; int del; int add; int task_ctx_nr; int attr_groups; } ;
struct TYPE_9__ {int function; } ;
struct i915_pmu {TYPE_2__ base; TYPE_5__ timer; int lock; } ;
struct TYPE_6__ {int dev; } ;
struct drm_i915_private {TYPE_1__ drm; struct i915_pmu pmu; } ;
struct TYPE_8__ {int attrs; } ;


 int CLOCK_MONOTONIC ;
 int DRM_NOTE (char*,int) ;
 int ENOMEM ;
 int HRTIMER_MODE_REL ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int create_event_attributes (struct i915_pmu*) ;
 int dev_info (int ,char*) ;
 int free_event_attributes (struct i915_pmu*) ;
 int hrtimer_init (TYPE_5__*,int ,int ) ;
 int i915_pmu_attr_groups ;
 int i915_pmu_event_add ;
 int i915_pmu_event_del ;
 int i915_pmu_event_event_idx ;
 int * i915_pmu_event_init ;
 int i915_pmu_event_read ;
 int i915_pmu_event_start ;
 int i915_pmu_event_stop ;
 TYPE_4__ i915_pmu_events_attr_group ;
 int i915_pmu_register_cpuhp_state (struct i915_pmu*) ;
 int i915_sample ;
 int perf_invalid_context ;
 int perf_pmu_register (TYPE_2__*,char*,int) ;
 int perf_pmu_unregister (TYPE_2__*) ;
 int spin_lock_init (int *) ;

void i915_pmu_register(struct drm_i915_private *i915)
{
 struct i915_pmu *pmu = &i915->pmu;
 int ret;

 if (INTEL_GEN(i915) <= 2) {
  dev_info(i915->drm.dev, "PMU not supported for this GPU.");
  return;
 }

 i915_pmu_events_attr_group.attrs = create_event_attributes(pmu);
 if (!i915_pmu_events_attr_group.attrs) {
  ret = -ENOMEM;
  goto err;
 }

 pmu->base.attr_groups = i915_pmu_attr_groups;
 pmu->base.task_ctx_nr = perf_invalid_context;
 pmu->base.event_init = i915_pmu_event_init;
 pmu->base.add = i915_pmu_event_add;
 pmu->base.del = i915_pmu_event_del;
 pmu->base.start = i915_pmu_event_start;
 pmu->base.stop = i915_pmu_event_stop;
 pmu->base.read = i915_pmu_event_read;
 pmu->base.event_idx = i915_pmu_event_event_idx;

 spin_lock_init(&pmu->lock);
 hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 pmu->timer.function = i915_sample;

 ret = perf_pmu_register(&pmu->base, "i915", -1);
 if (ret)
  goto err;

 ret = i915_pmu_register_cpuhp_state(pmu);
 if (ret)
  goto err_unreg;

 return;

err_unreg:
 perf_pmu_unregister(&pmu->base);
err:
 pmu->base.event_init = ((void*)0);
 free_event_attributes(pmu);
 DRM_NOTE("Failed to register PMU! (err=%d)\n", ret);
}
