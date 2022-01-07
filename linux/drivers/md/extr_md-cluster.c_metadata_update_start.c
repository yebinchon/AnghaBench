
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int thread; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int state; TYPE_1__* token_lockres; int wait; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 scalar_t__ DLM_LOCK_EX ;
 int MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD ;
 int MD_CLUSTER_SEND_LOCK ;
 int MD_CLUSTER_SEND_LOCKED_ALREADY ;
 int WARN_ON_ONCE (int) ;
 int clear_bit_unlock (int ,int *) ;
 int lock_token (struct md_cluster_info*,int) ;
 int md_wakeup_thread (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_and_set_bit_lock (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int metadata_update_start(struct mddev *mddev)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;
 int ret;





 ret = test_and_set_bit_lock(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD,
        &cinfo->state);
 WARN_ON_ONCE(ret);
 md_wakeup_thread(mddev->thread);

 wait_event(cinfo->wait,
     !test_and_set_bit(MD_CLUSTER_SEND_LOCK, &cinfo->state) ||
     test_and_clear_bit(MD_CLUSTER_SEND_LOCKED_ALREADY, &cinfo->state));


 if (cinfo->token_lockres->mode == DLM_LOCK_EX) {
  clear_bit_unlock(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state);
  return 0;
 }

 ret = lock_token(cinfo, 1);
 clear_bit_unlock(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state);
 return ret;
}
