
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {scalar_t__ ro; int in_sync; int * wb_info_pool; scalar_t__ sb_flags; TYPE_1__* pers; int safemode_timer; int recovery; scalar_t__ sync_thread; } ;
struct TYPE_2__ {int (* quiesce ) (struct mddev*,int) ;} ;


 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_INTR ;
 int del_timer_sync (int *) ;
 int flush_workqueue (int ) ;
 int md_bitmap_flush (struct mddev*) ;
 int md_misc_wq ;
 int md_reap_sync_thread (struct mddev*) ;
 int md_update_sb (struct mddev*,int) ;
 int mddev_is_clustered (struct mddev*) ;
 int mempool_destroy (int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mddev*,int) ;
 int stub2 (struct mddev*,int) ;

__attribute__((used)) static void __md_stop_writes(struct mddev *mddev)
{
 set_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
 flush_workqueue(md_misc_wq);
 if (mddev->sync_thread) {
  set_bit(MD_RECOVERY_INTR, &mddev->recovery);
  md_reap_sync_thread(mddev);
 }

 del_timer_sync(&mddev->safemode_timer);

 if (mddev->pers && mddev->pers->quiesce) {
  mddev->pers->quiesce(mddev, 1);
  mddev->pers->quiesce(mddev, 0);
 }
 md_bitmap_flush(mddev);

 if (mddev->ro == 0 &&
     ((!mddev->in_sync && !mddev_is_clustered(mddev)) ||
      mddev->sb_flags)) {

  if (!mddev_is_clustered(mddev))
   mddev->in_sync = 1;
  md_update_sb(mddev, 1);
 }
 mempool_destroy(mddev->wb_info_pool);
 mddev->wb_info_pool = ((void*)0);
}
