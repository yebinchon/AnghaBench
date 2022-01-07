
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_region_hydration {scalar_t__ status; int deferred_bios; scalar_t__ overwrite_bio; struct clone* clone; } ;
struct clone {int hydrations_in_flight; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ BLK_STS_IOERR ;
 scalar_t__ BLK_STS_OK ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_list_add (int *,scalar_t__) ;
 int complete_overwrite_bio (struct clone*,scalar_t__) ;
 int fail_bios (int *,scalar_t__) ;
 int free_hydration (struct dm_clone_region_hydration*) ;
 int hydration_update_metadata (struct dm_clone_region_hydration*) ;
 int issue_deferred_bios (struct clone*,int *) ;
 scalar_t__ likely (int) ;
 int wakeup_hydration_waiters (struct clone*) ;

__attribute__((used)) static void hydration_complete(struct dm_clone_region_hydration *hd)
{
 int r;
 blk_status_t status;
 struct clone *clone = hd->clone;

 r = hydration_update_metadata(hd);

 if (hd->status == BLK_STS_OK && likely(!r)) {
  if (hd->overwrite_bio)
   complete_overwrite_bio(clone, hd->overwrite_bio);

  issue_deferred_bios(clone, &hd->deferred_bios);
 } else {
  status = r ? BLK_STS_IOERR : hd->status;

  if (hd->overwrite_bio)
   bio_list_add(&hd->deferred_bios, hd->overwrite_bio);

  fail_bios(&hd->deferred_bios, status);
 }

 free_hydration(hd);

 if (atomic_dec_and_test(&clone->hydrations_in_flight))
  wakeup_hydration_waiters(clone);
}
