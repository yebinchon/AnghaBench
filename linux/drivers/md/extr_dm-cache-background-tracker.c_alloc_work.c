
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_work {int dummy; } ;
struct background_tracker {int work_cache; } ;


 int GFP_NOWAIT ;
 struct bt_work* kmem_cache_alloc (int ,int ) ;
 scalar_t__ max_work_reached (struct background_tracker*) ;

__attribute__((used)) static struct bt_work *alloc_work(struct background_tracker *b)
{
 if (max_work_reached(b))
  return ((void*)0);

 return kmem_cache_alloc(b->work_cache, GFP_NOWAIT);
}
