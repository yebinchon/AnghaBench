
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int nr_mirrors; int kmirrord_wq; int kcopyd_client; int trigger_event; int timer; } ;
struct dm_target {scalar_t__ private; } ;


 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dm_kcopyd_client_destroy (int ) ;
 int flush_work (int *) ;
 int flush_workqueue (int ) ;
 int free_context (struct mirror_set*,struct dm_target*,int ) ;

__attribute__((used)) static void mirror_dtr(struct dm_target *ti)
{
 struct mirror_set *ms = (struct mirror_set *) ti->private;

 del_timer_sync(&ms->timer);
 flush_workqueue(ms->kmirrord_wq);
 flush_work(&ms->trigger_event);
 dm_kcopyd_client_destroy(ms->kcopyd_client);
 destroy_workqueue(ms->kmirrord_wq);
 free_context(ms, ti, ms->nr_mirrors);
}
