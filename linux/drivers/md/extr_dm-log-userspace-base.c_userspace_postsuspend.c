
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int luid; int uuid; int flush_log_work; int sched_flush; scalar_t__ integrated_flush; } ;
struct dm_dirty_log {struct log_c* context; } ;


 int DM_ULOG_POSTSUSPEND ;
 scalar_t__ atomic_read (int *) ;
 int dm_consult_userspace (int ,int ,int ,int *,int ,int *,int *) ;
 int flush_delayed_work (int *) ;

__attribute__((used)) static int userspace_postsuspend(struct dm_dirty_log *log)
{
 int r;
 struct log_c *lc = log->context;




 if (lc->integrated_flush && atomic_read(&lc->sched_flush))
  flush_delayed_work(&lc->flush_log_work);

 r = dm_consult_userspace(lc->uuid, lc->luid, DM_ULOG_POSTSUSPEND,
     ((void*)0), 0, ((void*)0), ((void*)0));

 return r;
}
