
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cluster_name; } ;
struct mddev {TYPE_1__ bitmap_info; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int slot_number; } ;
struct dlm_slot {scalar_t__ slot; int nodeid; } ;


 int __recover_slot (struct mddev*,scalar_t__) ;
 int pr_info (char*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void recover_slot(void *arg, struct dlm_slot *slot)
{
 struct mddev *mddev = arg;
 struct md_cluster_info *cinfo = mddev->cluster_info;

 pr_info("md-cluster: %s Node %d/%d down. My slot: %d. Initiating recovery.\n",
   mddev->bitmap_info.cluster_name,
   slot->nodeid, slot->slot,
   cinfo->slot_number);


 __recover_slot(mddev, slot->slot - 1);
}
