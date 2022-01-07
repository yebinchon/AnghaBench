
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1conf {int wait_barrier; int device_lock; int * nr_queued; int retry_list; } ;
struct r1bio {int retry_list; int sector; struct mddev* mddev; } ;
struct mddev {int thread; struct r1conf* private; } ;


 int atomic_inc (int *) ;
 int list_add (int *,int *) ;
 int md_wakeup_thread (int ) ;
 int sector_to_idx (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void reschedule_retry(struct r1bio *r1_bio)
{
 unsigned long flags;
 struct mddev *mddev = r1_bio->mddev;
 struct r1conf *conf = mddev->private;
 int idx;

 idx = sector_to_idx(r1_bio->sector);
 spin_lock_irqsave(&conf->device_lock, flags);
 list_add(&r1_bio->retry_list, &conf->retry_list);
 atomic_inc(&conf->nr_queued[idx]);
 spin_unlock_irqrestore(&conf->device_lock, flags);

 wake_up(&conf->wait_barrier);
 md_wakeup_thread(mddev->thread);
}
