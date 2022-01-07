
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {struct dm_target* ti; int queue_mode; int work_mutex; int trigger_event; int nr_valid_paths; int lock; int priority_groups; } ;
struct dm_target {struct multipath* private; } ;


 int DM_TYPE_NONE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 struct multipath* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int trigger_event ;

__attribute__((used)) static struct multipath *alloc_multipath(struct dm_target *ti)
{
 struct multipath *m;

 m = kzalloc(sizeof(*m), GFP_KERNEL);
 if (m) {
  INIT_LIST_HEAD(&m->priority_groups);
  spin_lock_init(&m->lock);
  atomic_set(&m->nr_valid_paths, 0);
  INIT_WORK(&m->trigger_event, trigger_event);
  mutex_init(&m->work_mutex);

  m->queue_mode = DM_TYPE_NONE;

  m->ti = ti;
  ti->private = m;
 }

 return m;
}
