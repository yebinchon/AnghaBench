
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free_list; int free_work; int hw_id_list; int hw_ida; int list; int mutex; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ GEN11_MAX_CONTEXT_HW_ID ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ INT_MAX ;
 scalar_t__ MAX_CONTEXT_HW_ID ;
 int contexts_free_worker ;
 int ida_init (int *) ;
 int init_llist_head (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void init_contexts(struct drm_i915_private *i915)
{
 mutex_init(&i915->contexts.mutex);
 INIT_LIST_HEAD(&i915->contexts.list);


 BUILD_BUG_ON(MAX_CONTEXT_HW_ID > INT_MAX);
 BUILD_BUG_ON(GEN11_MAX_CONTEXT_HW_ID > INT_MAX);
 ida_init(&i915->contexts.hw_ida);
 INIT_LIST_HEAD(&i915->contexts.hw_id_list);

 INIT_WORK(&i915->contexts.free_work, contexts_free_worker);
 init_llist_head(&i915->contexts.free_list);
}
