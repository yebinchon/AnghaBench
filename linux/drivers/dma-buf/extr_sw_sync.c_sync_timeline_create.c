
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int lock; int pt_list; int pt_tree; int name; int context; int kref; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int dma_fence_context_alloc (int) ;
 int kref_init (int *) ;
 struct sync_timeline* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char const*,int) ;
 int sync_timeline_debug_add (struct sync_timeline*) ;

__attribute__((used)) static struct sync_timeline *sync_timeline_create(const char *name)
{
 struct sync_timeline *obj;

 obj = kzalloc(sizeof(*obj), GFP_KERNEL);
 if (!obj)
  return ((void*)0);

 kref_init(&obj->kref);
 obj->context = dma_fence_context_alloc(1);
 strlcpy(obj->name, name, sizeof(obj->name));

 obj->pt_tree = RB_ROOT;
 INIT_LIST_HEAD(&obj->pt_list);
 spin_lock_init(&obj->lock);

 sync_timeline_debug_add(obj);

 return obj;
}
