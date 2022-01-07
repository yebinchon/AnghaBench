
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;
struct mddev {TYPE_1__ bitmap_info; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {scalar_t__* other_bitmap_lockres; } ;


 int kfree (scalar_t__*) ;
 int lockres_free (scalar_t__) ;

__attribute__((used)) static void unlock_all_bitmaps(struct mddev *mddev)
{
 struct md_cluster_info *cinfo = mddev->cluster_info;
 int i;


 if (cinfo->other_bitmap_lockres) {
  for (i = 0; i < mddev->bitmap_info.nodes - 1; i++) {
   if (cinfo->other_bitmap_lockres[i]) {
    lockres_free(cinfo->other_bitmap_lockres[i]);
   }
  }
  kfree(cinfo->other_bitmap_lockres);
 }
}
