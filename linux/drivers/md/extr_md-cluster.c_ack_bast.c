
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_cluster_info {int state; int recv_thread; } ;
struct dlm_lock_resource {TYPE_1__* mddev; } ;
struct TYPE_2__ {struct md_cluster_info* cluster_info; } ;


 int DLM_LOCK_EX ;
 int MD_CLUSTER_ALREADY_IN_CLUSTER ;
 int MD_CLUSTER_PENDING_RECV_EVENT ;
 int md_wakeup_thread (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ack_bast(void *arg, int mode)
{
 struct dlm_lock_resource *res = arg;
 struct md_cluster_info *cinfo = res->mddev->cluster_info;

 if (mode == DLM_LOCK_EX) {
  if (test_bit(MD_CLUSTER_ALREADY_IN_CLUSTER, &cinfo->state))
   md_wakeup_thread(cinfo->recv_thread);
  else
   set_bit(MD_CLUSTER_PENDING_RECV_EVENT, &cinfo->state);
 }
}
