
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {int flush_work; int reclaim; int chunk_wq; } ;
struct dm_target {struct dmz_target* private; } ;


 int cancel_delayed_work_sync (int *) ;
 int dmz_suspend_reclaim (int ) ;
 int flush_workqueue (int ) ;

__attribute__((used)) static void dmz_suspend(struct dm_target *ti)
{
 struct dmz_target *dmz = ti->private;

 flush_workqueue(dmz->chunk_wq);
 dmz_suspend_reclaim(dmz->reclaim);
 cancel_delayed_work_sync(&dmz->flush_work);
}
