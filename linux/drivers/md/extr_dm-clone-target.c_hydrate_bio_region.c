
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_bucket {int dummy; } ;
struct dm_clone_region_hydration {int deferred_bios; int h; } ;
struct clone {int cmd; } ;
struct bio {int dummy; } ;


 scalar_t__ CM_READ_ONLY ;
 struct dm_clone_region_hydration* __find_or_insert_region_hydration (struct hash_table_bucket*,struct dm_clone_region_hydration*) ;
 struct dm_clone_region_hydration* __hash_find (struct hash_table_bucket*,unsigned long) ;
 struct dm_clone_region_hydration* alloc_hydration (struct clone*) ;
 int bio_io_error (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 unsigned long bio_to_region (struct clone*,struct bio*) ;
 int bucket_lock_irqsave (struct hash_table_bucket*,unsigned long) ;
 int bucket_unlock_irqrestore (struct hash_table_bucket*,unsigned long) ;
 scalar_t__ dm_clone_is_region_hydrated (int ,unsigned long) ;
 int free_hydration (struct dm_clone_region_hydration*) ;
 scalar_t__ get_clone_mode (struct clone*) ;
 struct hash_table_bucket* get_hash_table_bucket (struct clone*,unsigned long) ;
 int hlist_del (int *) ;
 int hydration_copy (struct dm_clone_region_hydration*,int) ;
 int hydration_init (struct dm_clone_region_hydration*,unsigned long) ;
 int hydration_overwrite (struct dm_clone_region_hydration*,struct bio*) ;
 scalar_t__ is_overwrite_bio (struct clone*,struct bio*) ;
 int issue_bio (struct clone*,struct bio*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void hydrate_bio_region(struct clone *clone, struct bio *bio)
{
 unsigned long flags;
 unsigned long region_nr;
 struct hash_table_bucket *bucket;
 struct dm_clone_region_hydration *hd, *hd2;

 region_nr = bio_to_region(clone, bio);
 bucket = get_hash_table_bucket(clone, region_nr);

 bucket_lock_irqsave(bucket, flags);

 hd = __hash_find(bucket, region_nr);
 if (hd) {

  bio_list_add(&hd->deferred_bios, bio);
  bucket_unlock_irqrestore(bucket, flags);
  return;
 }

 if (dm_clone_is_region_hydrated(clone->cmd, region_nr)) {

  bucket_unlock_irqrestore(bucket, flags);
  issue_bio(clone, bio);
  return;
 }





 bucket_unlock_irqrestore(bucket, flags);

 hd = alloc_hydration(clone);
 hydration_init(hd, region_nr);

 bucket_lock_irqsave(bucket, flags);


 if (dm_clone_is_region_hydrated(clone->cmd, region_nr)) {
  bucket_unlock_irqrestore(bucket, flags);
  free_hydration(hd);
  issue_bio(clone, bio);
  return;
 }

 hd2 = __find_or_insert_region_hydration(bucket, hd);
 if (hd2 != hd) {

  bio_list_add(&hd2->deferred_bios, bio);
  bucket_unlock_irqrestore(bucket, flags);
  free_hydration(hd);
  return;
 }






 if (unlikely(get_clone_mode(clone) >= CM_READ_ONLY)) {
  hlist_del(&hd->h);
  bucket_unlock_irqrestore(bucket, flags);
  free_hydration(hd);
  bio_io_error(bio);
  return;
 }
 if (is_overwrite_bio(clone, bio)) {
  bucket_unlock_irqrestore(bucket, flags);
  hydration_overwrite(hd, bio);
 } else {
  bio_list_add(&hd->deferred_bios, bio);
  bucket_unlock_irqrestore(bucket, flags);
  hydration_copy(hd, 1);
 }
}
