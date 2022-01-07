
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {int chunk_lock; int bio_set; int metadata; int flush_wq; int flush_work; int reclaim; int chunk_wq; } ;
struct dm_target {struct dmz_target* private; } ;


 int bioset_exit (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dmz_dtr_metadata (int ) ;
 int dmz_dtr_reclaim (int ) ;
 int dmz_flush_metadata (int ) ;
 int dmz_put_zoned_device (struct dm_target*) ;
 int flush_workqueue (int ) ;
 int kfree (struct dmz_target*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void dmz_dtr(struct dm_target *ti)
{
 struct dmz_target *dmz = ti->private;

 flush_workqueue(dmz->chunk_wq);
 destroy_workqueue(dmz->chunk_wq);

 dmz_dtr_reclaim(dmz->reclaim);

 cancel_delayed_work_sync(&dmz->flush_work);
 destroy_workqueue(dmz->flush_wq);

 (void) dmz_flush_metadata(dmz->metadata);

 dmz_dtr_metadata(dmz->metadata);

 bioset_exit(&dmz->bio_set);

 dmz_put_zoned_device(ti);

 mutex_destroy(&dmz->chunk_lock);

 kfree(dmz);
}
