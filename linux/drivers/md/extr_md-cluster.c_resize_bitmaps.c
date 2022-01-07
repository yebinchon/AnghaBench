
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nodes; } ;
struct mddev {TYPE_1__ bitmap_info; struct bitmap* bitmap; } ;
struct dlm_lock_resource {int flags; } ;
struct bitmap_counts {unsigned long pages; } ;
struct bitmap {struct bitmap_counts counts; } ;
typedef int sector_t ;
struct TYPE_4__ {int (* slot_number ) (struct mddev*) ;} ;


 int DLM_LKF_NOQUEUE ;
 int DLM_LOCK_PW ;
 scalar_t__ IS_ERR (struct bitmap*) ;
 int dlm_lock_sync (struct dlm_lock_resource*,int ) ;
 struct bitmap* get_bitmap_from_slot (struct mddev*,int) ;
 int lockres_free (struct dlm_lock_resource*) ;
 struct dlm_lock_resource* lockres_init (struct mddev*,char*,int *,int) ;
 int md_bitmap_free (struct bitmap*) ;
 TYPE_2__* md_cluster_ops ;
 int pr_err (char*,...) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (struct mddev*) ;
 int update_bitmap_size (struct mddev*,int ) ;

__attribute__((used)) static int resize_bitmaps(struct mddev *mddev, sector_t newsize, sector_t oldsize)
{
 struct bitmap_counts *counts;
 char str[64];
 struct dlm_lock_resource *bm_lockres;
 struct bitmap *bitmap = mddev->bitmap;
 unsigned long my_pages = bitmap->counts.pages;
 int i, rv;





 rv = update_bitmap_size(mddev, newsize);
 if (rv)
  return rv;

 for (i = 0; i < mddev->bitmap_info.nodes; i++) {
  if (i == md_cluster_ops->slot_number(mddev))
   continue;

  bitmap = get_bitmap_from_slot(mddev, i);
  if (IS_ERR(bitmap)) {
   pr_err("can't get bitmap from slot %d\n", i);
   goto out;
  }
  counts = &bitmap->counts;





  snprintf(str, 64, "bitmap%04d", i);
  bm_lockres = lockres_init(mddev, str, ((void*)0), 1);
  if (!bm_lockres) {
   pr_err("Cannot initialize %s lock\n", str);
   goto out;
  }
  bm_lockres->flags |= DLM_LKF_NOQUEUE;
  rv = dlm_lock_sync(bm_lockres, DLM_LOCK_PW);
  if (!rv)
   counts->pages = my_pages;
  lockres_free(bm_lockres);

  if (my_pages != counts->pages)




   goto out;
 }

 return 0;
out:
 md_bitmap_free(bitmap);
 update_bitmap_size(mddev, oldsize);
 return -1;
}
