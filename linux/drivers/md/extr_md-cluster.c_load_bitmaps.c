
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int recv_thread; int state; } ;


 int MD_CLUSTER_ALREADY_IN_CLUSTER ;
 int MD_CLUSTER_PENDING_RECV_EVENT ;
 scalar_t__ gather_all_resync_info (struct mddev*,int) ;
 int md_wakeup_thread (int ) ;
 int pr_err (char*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void load_bitmaps(struct mddev *mddev, int total_slots)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;


 if (gather_all_resync_info(mddev, total_slots))
  pr_err("md-cluster: failed to gather all resyn infos\n");
 set_bit(MD_CLUSTER_ALREADY_IN_CLUSTER, &cinfo->state);

 if (test_and_clear_bit(MD_CLUSTER_PENDING_RECV_EVENT, &cinfo->state))
  md_wakeup_thread(cinfo->recv_thread);
}
