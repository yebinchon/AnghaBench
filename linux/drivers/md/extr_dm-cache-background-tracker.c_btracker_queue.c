
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_work {int dummy; } ;
struct bt_work {struct policy_work work; int list; } ;
struct background_tracker {int queued; int issued; int work_cache; } ;


 int EINVAL ;
 int ENOMEM ;
 int __insert_pending (struct background_tracker*,struct bt_work*) ;
 struct bt_work* alloc_work (struct background_tracker*) ;
 int kmem_cache_free (int ,struct bt_work*) ;
 int list_add (int *,int *) ;
 int memcpy (struct policy_work*,struct policy_work*,int) ;
 int update_stats (struct background_tracker*,struct policy_work*,int) ;

int btracker_queue(struct background_tracker *b,
     struct policy_work *work,
     struct policy_work **pwork)
{
 struct bt_work *w;

 if (pwork)
  *pwork = ((void*)0);

 w = alloc_work(b);
 if (!w)
  return -ENOMEM;

 memcpy(&w->work, work, sizeof(*work));

 if (!__insert_pending(b, w)) {




  kmem_cache_free(b->work_cache, w);
  return -EINVAL;
 }

 if (pwork) {
  *pwork = &w->work;
  list_add(&w->list, &b->issued);
 } else
  list_add(&w->list, &b->queued);
 update_stats(b, &w->work, 1);

 return 0;
}
