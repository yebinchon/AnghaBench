
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp_superblock_1 {char* device_uuid; } ;
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_rdev {int desc_nr; int sb_page; } ;
struct md_cluster_info {int wait; int state; TYPE_1__* no_new_dev_lockres; } ;
struct cluster_msg {void* raid_slot; int uuid; void* type; } ;
typedef int cmsg ;
struct TYPE_2__ {int flags; } ;


 int DLM_LKF_NOQUEUE ;
 int DLM_LOCK_CR ;
 int DLM_LOCK_EX ;
 int EAGAIN ;
 int ENOENT ;
 int MD_CLUSTER_SEND_LOCKED_ALREADY ;
 int NEWDISK ;
 int __sendmsg (struct md_cluster_info*,struct cluster_msg*) ;
 void* cpu_to_le32 (int ) ;
 int dlm_lock_sync (TYPE_1__*,int ) ;
 int lock_comm (struct md_cluster_info*,int) ;
 int memcpy (int ,char*,int) ;
 int memset (struct cluster_msg*,int ,int) ;
 struct mdp_superblock_1* page_address (int ) ;
 int set_bit (int ,int *) ;
 int unlock_comm (struct md_cluster_info*) ;
 int wake_up (int *) ;

__attribute__((used)) static int add_new_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;
 struct cluster_msg cmsg;
 int ret = 0;
 struct mdp_superblock_1 *sb = page_address(rdev->sb_page);
 char *uuid = sb->device_uuid;

 memset(&cmsg, 0, sizeof(cmsg));
 cmsg.type = cpu_to_le32(NEWDISK);
 memcpy(cmsg.uuid, uuid, 16);
 cmsg.raid_slot = cpu_to_le32(rdev->desc_nr);
 lock_comm(cinfo, 1);
 ret = __sendmsg(cinfo, &cmsg);
 if (ret) {
  unlock_comm(cinfo);
  return ret;
 }
 cinfo->no_new_dev_lockres->flags |= DLM_LKF_NOQUEUE;
 ret = dlm_lock_sync(cinfo->no_new_dev_lockres, DLM_LOCK_EX);
 cinfo->no_new_dev_lockres->flags &= ~DLM_LKF_NOQUEUE;

 if (ret == -EAGAIN)
  ret = -ENOENT;
 if (ret)
  unlock_comm(cinfo);
 else {
  dlm_lock_sync(cinfo->no_new_dev_lockres, DLM_LOCK_CR);
  set_bit(MD_CLUSTER_SEND_LOCKED_ALREADY, &cinfo->state);
  wake_up(&cinfo->wait);
 }
 return ret;
}
