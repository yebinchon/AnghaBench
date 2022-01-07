
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int thread; int recovery; int recovery_wait; int recovery_active; } ;


 int MD_RECOVERY_ERROR ;
 int MD_RECOVERY_INTR ;
 int atomic_sub (int,int *) ;
 int md_wakeup_thread (int ) ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

void md_done_sync(struct mddev *mddev, int blocks, int ok)
{

 atomic_sub(blocks, &mddev->recovery_active);
 wake_up(&mddev->recovery_wait);
 if (!ok) {
  set_bit(MD_RECOVERY_INTR, &mddev->recovery);
  set_bit(MD_RECOVERY_ERROR, &mddev->recovery);
  md_wakeup_thread(mddev->thread);

 }
}
