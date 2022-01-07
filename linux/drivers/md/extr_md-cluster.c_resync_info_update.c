
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resync_info {int hi; } ;
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {TYPE_2__* bitmap_lockres; } ;
struct cluster_msg {void* high; void* low; int type; int member_0; } ;
typedef int sector_t ;
struct TYPE_4__ {int sb_lvbptr; } ;
struct TYPE_5__ {TYPE_1__ lksb; } ;


 int DLM_LOCK_PW ;
 int RESYNCING ;
 int add_resync_info (TYPE_2__*,int ,int ) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int dlm_lock_sync (TYPE_2__*,int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (struct resync_info*,int ,int) ;
 int sendmsg (struct md_cluster_info*,struct cluster_msg*,int) ;

__attribute__((used)) static int resync_info_update(struct mddev *mddev, sector_t lo, sector_t hi)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;
 struct resync_info ri;
 struct cluster_msg cmsg = {0};


 if (hi == 0) {
  memcpy(&ri, cinfo->bitmap_lockres->lksb.sb_lvbptr, sizeof(struct resync_info));
  if (le64_to_cpu(ri.hi) == 0)
   return 0;
 }

 add_resync_info(cinfo->bitmap_lockres, lo, hi);

 dlm_lock_sync(cinfo->bitmap_lockres, DLM_LOCK_PW);
 cmsg.type = cpu_to_le32(RESYNCING);
 cmsg.low = cpu_to_le64(lo);
 cmsg.high = cpu_to_le64(hi);





 if (lo == 0 && hi == 0)
  return sendmsg(cinfo, &cmsg, 1);
 else
  return sendmsg(cinfo, &cmsg, 0);
}
