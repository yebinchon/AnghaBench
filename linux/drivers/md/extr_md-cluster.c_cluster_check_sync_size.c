
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nodes; } ;
struct mddev {struct bitmap* bitmap; TYPE_1__ bitmap_info; } ;
struct dlm_lock_resource {int flags; } ;
struct TYPE_8__ {int sb_page; } ;
struct bitmap {TYPE_2__ storage; } ;
struct TYPE_9__ {unsigned long sync_size; } ;
typedef TYPE_3__ bitmap_super_t ;
struct TYPE_10__ {int (* slot_number ) (struct mddev*) ;} ;


 int DLM_LKF_NOQUEUE ;
 int DLM_LOCK_PW ;
 scalar_t__ IS_ERR (struct bitmap*) ;
 int dlm_lock_sync (struct dlm_lock_resource*,int ) ;
 struct bitmap* get_bitmap_from_slot (struct mddev*,int) ;
 TYPE_3__* kmap_atomic (int ) ;
 int kunmap_atomic (TYPE_3__*) ;
 int lockres_free (struct dlm_lock_resource*) ;
 struct dlm_lock_resource* lockres_init (struct mddev*,char*,int *,int) ;
 int md_bitmap_free (struct bitmap*) ;
 int md_bitmap_update_sb (struct bitmap*) ;
 TYPE_4__* md_cluster_ops ;
 int pr_err (char*,...) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (struct mddev*) ;

__attribute__((used)) static int cluster_check_sync_size(struct mddev *mddev)
{
 int i, rv;
 bitmap_super_t *sb;
 unsigned long my_sync_size, sync_size = 0;
 int node_num = mddev->bitmap_info.nodes;
 int current_slot = md_cluster_ops->slot_number(mddev);
 struct bitmap *bitmap = mddev->bitmap;
 char str[64];
 struct dlm_lock_resource *bm_lockres;

 sb = kmap_atomic(bitmap->storage.sb_page);
 my_sync_size = sb->sync_size;
 kunmap_atomic(sb);

 for (i = 0; i < node_num; i++) {
  if (i == current_slot)
   continue;

  bitmap = get_bitmap_from_slot(mddev, i);
  if (IS_ERR(bitmap)) {
   pr_err("can't get bitmap from slot %d\n", i);
   return -1;
  }





  snprintf(str, 64, "bitmap%04d", i);
  bm_lockres = lockres_init(mddev, str, ((void*)0), 1);
  if (!bm_lockres) {
   pr_err("md-cluster: Cannot initialize %s\n", str);
   md_bitmap_free(bitmap);
   return -1;
  }
  bm_lockres->flags |= DLM_LKF_NOQUEUE;
  rv = dlm_lock_sync(bm_lockres, DLM_LOCK_PW);
  if (!rv)
   md_bitmap_update_sb(bitmap);
  lockres_free(bm_lockres);

  sb = kmap_atomic(bitmap->storage.sb_page);
  if (sync_size == 0)
   sync_size = sb->sync_size;
  else if (sync_size != sb->sync_size) {
   kunmap_atomic(sb);
   md_bitmap_free(bitmap);
   return -1;
  }
  kunmap_atomic(sb);
  md_bitmap_free(bitmap);
 }

 return (my_sync_size == sync_size) ? 0 : -1;
}
