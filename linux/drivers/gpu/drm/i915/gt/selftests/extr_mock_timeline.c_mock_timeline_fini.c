
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int sync; } ;


 int i915_syncmap_free (int *) ;

void mock_timeline_fini(struct intel_timeline *timeline)
{
 i915_syncmap_free(&timeline->sync);
}
