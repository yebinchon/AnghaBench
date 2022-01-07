
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
struct mddev {TYPE_2__* thread; TYPE_1__ bitmap_info; int lock; struct bitmap* bitmap; int * wb_info_pool; } ;
struct bitmap {int dummy; } ;
struct TYPE_4__ {int timeout; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 int md_bitmap_free (struct bitmap*) ;
 int md_bitmap_wait_behind_writes (struct mddev*) ;
 int mempool_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void md_bitmap_destroy(struct mddev *mddev)
{
 struct bitmap *bitmap = mddev->bitmap;

 if (!bitmap)
  return;

 md_bitmap_wait_behind_writes(mddev);
 mempool_destroy(mddev->wb_info_pool);
 mddev->wb_info_pool = ((void*)0);

 mutex_lock(&mddev->bitmap_info.mutex);
 spin_lock(&mddev->lock);
 mddev->bitmap = ((void*)0);
 spin_unlock(&mddev->lock);
 mutex_unlock(&mddev->bitmap_info.mutex);
 if (mddev->thread)
  mddev->thread->timeout = MAX_SCHEDULE_TIMEOUT;

 md_bitmap_free(bitmap);
}
