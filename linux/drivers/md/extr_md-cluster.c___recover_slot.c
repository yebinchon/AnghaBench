
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {scalar_t__ recovery_thread; int recovery_map; } ;


 scalar_t__ md_register_thread (int ,struct mddev*,char*) ;
 int md_wakeup_thread (scalar_t__) ;
 int pr_warn (char*) ;
 int recover_bitmaps ;
 int set_bit (int,int *) ;

__attribute__((used)) static void __recover_slot(struct mddev *mddev, int slot)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;

 set_bit(slot, &cinfo->recovery_map);
 if (!cinfo->recovery_thread) {
  cinfo->recovery_thread = md_register_thread(recover_bitmaps,
    mddev, "recover");
  if (!cinfo->recovery_thread) {
   pr_warn("md-cluster: Could not create recovery thread\n");
   return;
  }
 }
 md_wakeup_thread(cinfo->recovery_thread);
}
