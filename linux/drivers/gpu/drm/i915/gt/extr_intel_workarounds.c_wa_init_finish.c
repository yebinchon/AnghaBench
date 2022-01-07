
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int count; int engine_name; int name; int wa_count; struct i915_wa* list; } ;
struct i915_wa {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ,int ) ;
 int GFP_KERNEL ;
 int IS_ALIGNED (int,int ) ;
 int WA_LIST_CHUNK ;
 int kfree (struct i915_wa*) ;
 struct i915_wa* kmemdup (struct i915_wa*,int,int ) ;

__attribute__((used)) static void wa_init_finish(struct i915_wa_list *wal)
{

 if (!IS_ALIGNED(wal->count, WA_LIST_CHUNK)) {
  struct i915_wa *list = kmemdup(wal->list,
            wal->count * sizeof(*list),
            GFP_KERNEL);

  if (list) {
   kfree(wal->list);
   wal->list = list;
  }
 }

 if (!wal->count)
  return;

 DRM_DEBUG_DRIVER("Initialized %u %s workarounds on %s\n",
    wal->wa_count, wal->name, wal->engine_name);
}
