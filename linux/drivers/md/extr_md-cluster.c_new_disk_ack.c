
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int newdisk_completion; int no_new_dev_lockres; int state; } ;


 int EINVAL ;
 int MD_CLUSTER_WAITING_FOR_NEWDISK ;
 int complete (int *) ;
 int dlm_unlock_sync (int ) ;
 int mdname (struct mddev*) ;
 int pr_warn (char*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int new_disk_ack(struct mddev *mddev, bool ack)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;

 if (!test_bit(MD_CLUSTER_WAITING_FOR_NEWDISK, &cinfo->state)) {
  pr_warn("md-cluster(%s): Spurious cluster confirmation\n", mdname(mddev));
  return -EINVAL;
 }

 if (ack)
  dlm_unlock_sync(cinfo->no_new_dev_lockres);
 complete(&cinfo->newdisk_completion);
 return 0;
}
