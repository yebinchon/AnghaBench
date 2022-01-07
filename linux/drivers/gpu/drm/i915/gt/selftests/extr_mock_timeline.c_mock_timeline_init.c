
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_timeline {int link; int sync; int requests; int mutex; int last_request; int fence_context; int * gt; } ;


 int INIT_ACTIVE_REQUEST (int *,int *) ;
 int INIT_LIST_HEAD (int *) ;
 int i915_syncmap_init (int *) ;
 int mutex_init (int *) ;

void mock_timeline_init(struct intel_timeline *timeline, u64 context)
{
 timeline->gt = ((void*)0);
 timeline->fence_context = context;

 mutex_init(&timeline->mutex);

 INIT_ACTIVE_REQUEST(&timeline->last_request, &timeline->mutex);
 INIT_LIST_HEAD(&timeline->requests);

 i915_syncmap_init(&timeline->sync);

 INIT_LIST_HEAD(&timeline->link);
}
