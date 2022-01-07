
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {int kc; int wq; int work; } ;


 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dm_kcopyd_client_destroy (int ) ;
 int kfree (struct dmz_reclaim*) ;

void dmz_dtr_reclaim(struct dmz_reclaim *zrc)
{
 cancel_delayed_work_sync(&zrc->work);
 destroy_workqueue(zrc->wq);
 dm_kcopyd_client_destroy(zrc->kc);
 kfree(zrc);
}
