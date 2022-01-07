
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mddev {scalar_t__ reshape_position; scalar_t__ recovery_cp; int thread; scalar_t__ recovery; int sync_thread; struct md_cluster_info* cluster_info; } ;
struct md_thread {struct mddev* mddev; } ;
struct md_cluster_info {int suspend_from; scalar_t__ recovery_map; int suspend_lock; scalar_t__ suspend_lo; scalar_t__ suspend_hi; } ;
struct dlm_lock_resource {int dummy; } ;
typedef scalar_t__ sector_t ;


 int DLM_LOCK_PW ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RESHAPE ;
 int MD_RESYNCING_REMOTE ;
 scalar_t__ MaxSector ;
 int clear_bit (int,scalar_t__*) ;
 int dlm_lock_sync_interruptible (struct dlm_lock_resource*,int ,struct mddev*) ;
 int fls64 (int ) ;
 int lockres_free (struct dlm_lock_resource*) ;
 struct dlm_lock_resource* lockres_init (struct mddev*,char*,int *,int) ;
 int md_bitmap_copy_from_slot (struct mddev*,int,scalar_t__*,scalar_t__*,int) ;
 int md_wakeup_thread (int ) ;
 int pr_err (char*,...) ;
 int set_bit (int ,scalar_t__*) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int,scalar_t__*) ;

__attribute__((used)) static void recover_bitmaps(struct md_thread *thread)
{
 struct mddev *mddev = thread->mddev;
 struct md_cluster_info *cinfo = mddev->cluster_info;
 struct dlm_lock_resource *bm_lockres;
 char str[64];
 int slot, ret;
 sector_t lo, hi;

 while (cinfo->recovery_map) {
  slot = fls64((u64)cinfo->recovery_map) - 1;

  snprintf(str, 64, "bitmap%04d", slot);
  bm_lockres = lockres_init(mddev, str, ((void*)0), 1);
  if (!bm_lockres) {
   pr_err("md-cluster: Cannot initialize bitmaps\n");
   goto clear_bit;
  }

  ret = dlm_lock_sync_interruptible(bm_lockres, DLM_LOCK_PW, mddev);
  if (ret) {
   pr_err("md-cluster: Could not DLM lock %s: %d\n",
     str, ret);
   goto clear_bit;
  }
  ret = md_bitmap_copy_from_slot(mddev, slot, &lo, &hi, 1);
  if (ret) {
   pr_err("md-cluster: Could not copy data from bitmap %d\n", slot);
   goto clear_bit;
  }


  spin_lock_irq(&cinfo->suspend_lock);
  cinfo->suspend_hi = 0;
  cinfo->suspend_lo = 0;
  cinfo->suspend_from = -1;
  spin_unlock_irq(&cinfo->suspend_lock);


  if (test_bit(MD_RESYNCING_REMOTE, &mddev->recovery) &&
      test_bit(MD_RECOVERY_RESHAPE, &mddev->recovery) &&
      mddev->reshape_position != MaxSector)
   md_wakeup_thread(mddev->sync_thread);

  if (hi > 0) {
   if (lo < mddev->recovery_cp)
    mddev->recovery_cp = lo;


   if (mddev->recovery_cp != MaxSector) {




    clear_bit(MD_RESYNCING_REMOTE,
       &mddev->recovery);
    set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
    md_wakeup_thread(mddev->thread);
   }
  }
clear_bit:
  lockres_free(bm_lockres);
  clear_bit(slot, &cinfo->recovery_map);
 }
}
