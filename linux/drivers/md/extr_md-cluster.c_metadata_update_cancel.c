
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int state; } ;


 int MD_CLUSTER_SEND_LOCKED_ALREADY ;
 int clear_bit (int ,int *) ;
 int unlock_comm (struct md_cluster_info*) ;

__attribute__((used)) static void metadata_update_cancel(struct mddev *mddev)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;
 clear_bit(MD_CLUSTER_SEND_LOCKED_ALREADY, &cinfo->state);
 unlock_comm(cinfo);
}
