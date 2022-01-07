
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; } ;
struct syncobj_wait_entry {TYPE_1__ node; } ;
struct drm_syncobj {int lock; } ;


 int list_del_init (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void drm_syncobj_remove_wait(struct drm_syncobj *syncobj,
        struct syncobj_wait_entry *wait)
{
 if (!wait->node.next)
  return;

 spin_lock(&syncobj->lock);
 list_del_init(&wait->node);
 spin_unlock(&syncobj->lock);
}
