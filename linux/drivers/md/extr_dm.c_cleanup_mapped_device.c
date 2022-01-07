
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mapped_device {int table_devices_lock; int type_lock; int suspend_lock; int * bdev; int io_barrier; scalar_t__ queue; TYPE_1__* disk; int * dax_dev; int io_bs; int bs; scalar_t__ wq; } ;
struct TYPE_3__ {int * private_data; } ;


 int _minor_lock ;
 int bdput (int *) ;
 int bioset_exit (int *) ;
 int blk_cleanup_queue (scalar_t__) ;
 int cleanup_srcu_struct (int *) ;
 int del_gendisk (TYPE_1__*) ;
 int destroy_workqueue (scalar_t__) ;
 int dm_mq_cleanup_mapped_device (struct mapped_device*) ;
 int kill_dax (int *) ;
 int mutex_destroy (int *) ;
 int put_dax (int *) ;
 int put_disk (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cleanup_mapped_device(struct mapped_device *md)
{
 if (md->wq)
  destroy_workqueue(md->wq);
 bioset_exit(&md->bs);
 bioset_exit(&md->io_bs);

 if (md->dax_dev) {
  kill_dax(md->dax_dev);
  put_dax(md->dax_dev);
  md->dax_dev = ((void*)0);
 }

 if (md->disk) {
  spin_lock(&_minor_lock);
  md->disk->private_data = ((void*)0);
  spin_unlock(&_minor_lock);
  del_gendisk(md->disk);
  put_disk(md->disk);
 }

 if (md->queue)
  blk_cleanup_queue(md->queue);

 cleanup_srcu_struct(&md->io_barrier);

 if (md->bdev) {
  bdput(md->bdev);
  md->bdev = ((void*)0);
 }

 mutex_destroy(&md->suspend_lock);
 mutex_destroy(&md->type_lock);
 mutex_destroy(&md->table_devices_lock);

 dm_mq_cleanup_mapped_device(md);
}
