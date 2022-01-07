
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ head; } ;
struct r1conf {int device_lock; scalar_t__ pending_count; TYPE_1__ pending_bio_list; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 struct bio* bio_list_get (TYPE_1__*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int flush_bio_list (struct r1conf*,struct bio*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void flush_pending_writes(struct r1conf *conf)
{



 spin_lock_irq(&conf->device_lock);

 if (conf->pending_bio_list.head) {
  struct blk_plug plug;
  struct bio *bio;

  bio = bio_list_get(&conf->pending_bio_list);
  conf->pending_count = 0;
  spin_unlock_irq(&conf->device_lock);
  __set_current_state(TASK_RUNNING);
  blk_start_plug(&plug);
  flush_bio_list(conf, bio);
  blk_finish_plug(&plug);
 } else
  spin_unlock_irq(&conf->device_lock);
}
