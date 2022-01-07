
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_rdev {int desc_nr; } ;
struct md_cluster_info {int dummy; } ;
struct cluster_msg {void* raid_slot; void* type; int member_0; } ;


 int REMOVE ;
 void* cpu_to_le32 (int ) ;
 int sendmsg (struct md_cluster_info*,struct cluster_msg*,int) ;

__attribute__((used)) static int remove_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct cluster_msg cmsg = {0};
 struct md_cluster_info *cinfo = mddev->cluster_info;
 cmsg.type = cpu_to_le32(REMOVE);
 cmsg.raid_slot = cpu_to_le32(rdev->desc_nr);
 return sendmsg(cinfo, &cmsg, 1);
}
