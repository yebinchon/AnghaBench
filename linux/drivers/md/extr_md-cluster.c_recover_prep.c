
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int state; } ;


 int MD_CLUSTER_SUSPEND_READ_BALANCING ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void recover_prep(void *arg)
{
 struct mddev *mddev = arg;
 struct md_cluster_info *cinfo = mddev->cluster_info;
 set_bit(MD_CLUSTER_SUSPEND_READ_BALANCING, &cinfo->state);
}
