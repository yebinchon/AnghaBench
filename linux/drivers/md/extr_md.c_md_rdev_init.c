
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int desc_nr; int saved_raid_disk; int raid_disk; int badblocks; int blocked_wait; int same_set; int corrected_errors; int read_errors; int nr_pending; int * bb_page; scalar_t__ sb_loaded; scalar_t__ last_read_error; scalar_t__ sb_events; scalar_t__ new_data_offset; scalar_t__ data_offset; scalar_t__ flags; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int badblocks_init (int *,int ) ;
 int init_waitqueue_head (int *) ;

int md_rdev_init(struct md_rdev *rdev)
{
 rdev->desc_nr = -1;
 rdev->saved_raid_disk = -1;
 rdev->raid_disk = -1;
 rdev->flags = 0;
 rdev->data_offset = 0;
 rdev->new_data_offset = 0;
 rdev->sb_events = 0;
 rdev->last_read_error = 0;
 rdev->sb_loaded = 0;
 rdev->bb_page = ((void*)0);
 atomic_set(&rdev->nr_pending, 0);
 atomic_set(&rdev->read_errors, 0);
 atomic_set(&rdev->corrected_errors, 0);

 INIT_LIST_HEAD(&rdev->same_set);
 init_waitqueue_head(&rdev->blocked_wait);





 return badblocks_init(&rdev->badblocks, 0);
}
