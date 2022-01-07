
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_bucket {int dummy; } ;
struct dm_clone_region_hydration {int dummy; } ;
struct clone {unsigned long nr_regions; int cmd; } ;
struct batch_info {int dummy; } ;


 int __batch_hydration (struct batch_info*,struct dm_clone_region_hydration*) ;
 int __hash_find (struct hash_table_bucket*,unsigned long) ;
 int __insert_region_hydration (struct hash_table_bucket*,struct dm_clone_region_hydration*) ;
 struct dm_clone_region_hydration* alloc_hydration (struct clone*) ;
 int bucket_lock_irqsave (struct hash_table_bucket*,unsigned long) ;
 int bucket_unlock_irqrestore (struct hash_table_bucket*,unsigned long) ;
 unsigned long dm_clone_find_next_unhydrated_region (int ,unsigned long) ;
 int dm_clone_is_region_hydrated (int ,unsigned long) ;
 int free_hydration (struct dm_clone_region_hydration*) ;
 struct hash_table_bucket* get_hash_table_bucket (struct clone*,unsigned long) ;
 int hydration_init (struct dm_clone_region_hydration*,unsigned long) ;

__attribute__((used)) static unsigned long __start_next_hydration(struct clone *clone,
         unsigned long offset,
         struct batch_info *batch)
{
 unsigned long flags;
 struct hash_table_bucket *bucket;
 struct dm_clone_region_hydration *hd;
 unsigned long nr_regions = clone->nr_regions;

 hd = alloc_hydration(clone);


 do {
  offset = dm_clone_find_next_unhydrated_region(clone->cmd, offset);
  if (offset == nr_regions)
   break;

  bucket = get_hash_table_bucket(clone, offset);
  bucket_lock_irqsave(bucket, flags);

  if (!dm_clone_is_region_hydrated(clone->cmd, offset) &&
      !__hash_find(bucket, offset)) {
   hydration_init(hd, offset);
   __insert_region_hydration(bucket, hd);
   bucket_unlock_irqrestore(bucket, flags);


   __batch_hydration(batch, hd);

   return (offset + 1);
  }

  bucket_unlock_irqrestore(bucket, flags);

 } while (++offset < nr_regions);

 if (hd)
  free_hydration(hd);

 return offset;
}
