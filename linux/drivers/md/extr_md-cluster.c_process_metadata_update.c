
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int good_device_nr; TYPE_1__* thread; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int state; int no_new_dev_lockres; } ;
struct cluster_msg {int raid_slot; } ;
struct TYPE_2__ {int wqueue; } ;


 int DLM_LOCK_CR ;
 int MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD ;
 int dlm_lock_sync (int ,int ) ;
 int le32_to_cpu (int ) ;
 int md_reload_sb (struct mddev*,int ) ;
 int mddev_trylock (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void process_metadata_update(struct mddev *mddev, struct cluster_msg *msg)
{
 int got_lock = 0;
 struct md_cluster_info *cinfo = mddev->cluster_info;
 mddev->good_device_nr = le32_to_cpu(msg->raid_slot);

 dlm_lock_sync(cinfo->no_new_dev_lockres, DLM_LOCK_CR);
 wait_event(mddev->thread->wqueue,
     (got_lock = mddev_trylock(mddev)) ||
      test_bit(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state));
 md_reload_sb(mddev, mddev->good_device_nr);
 if (got_lock)
  mddev_unlock(mddev);
}
