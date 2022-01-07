
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nodes; } ;
struct mddev {TYPE_1__ bitmap_info; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {TYPE_2__** other_bitmap_lockres; } ;
struct dlm_lock_resource {int dummy; } ;
struct TYPE_6__ {int flags; } ;


 int DLM_LKF_NOQUEUE ;
 int DLM_LOCK_PW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dlm_lock_sync (TYPE_2__*,int ) ;
 TYPE_2__** kcalloc (int,int,int ) ;
 TYPE_2__* lockres_init (struct mddev*,char*,int *,int) ;
 int memset (char*,char,int) ;
 int pr_err (char*) ;
 int slot_number (struct mddev*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int lock_all_bitmaps(struct mddev *mddev)
{
 int slot, my_slot, ret, held = 1, i = 0;
 char str[64];
 struct md_cluster_info *cinfo = mddev->cluster_info;

 cinfo->other_bitmap_lockres =
  kcalloc(mddev->bitmap_info.nodes - 1,
   sizeof(struct dlm_lock_resource *), GFP_KERNEL);
 if (!cinfo->other_bitmap_lockres) {
  pr_err("md: can't alloc mem for other bitmap locks\n");
  return 0;
 }

 my_slot = slot_number(mddev);
 for (slot = 0; slot < mddev->bitmap_info.nodes; slot++) {
  if (slot == my_slot)
   continue;

  memset(str, '\0', 64);
  snprintf(str, 64, "bitmap%04d", slot);
  cinfo->other_bitmap_lockres[i] = lockres_init(mddev, str, ((void*)0), 1);
  if (!cinfo->other_bitmap_lockres[i])
   return -ENOMEM;

  cinfo->other_bitmap_lockres[i]->flags |= DLM_LKF_NOQUEUE;
  ret = dlm_lock_sync(cinfo->other_bitmap_lockres[i], DLM_LOCK_PW);
  if (ret)
   held = -1;
  i++;
 }

 return held;
}
