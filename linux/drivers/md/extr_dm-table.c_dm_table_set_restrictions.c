
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct queue_limits {int max_sectors; scalar_t__ max_write_zeroes_sectors; scalar_t__ max_write_same_sectors; scalar_t__ discard_misaligned; scalar_t__ discard_alignment; scalar_t__ discard_granularity; scalar_t__ max_hw_discard_sectors; scalar_t__ max_discard_sectors; } ;
struct request_queue {TYPE_2__* backing_dev_info; struct queue_limits limits; } ;
struct dm_table {TYPE_1__* md; } ;
struct TYPE_4__ {int io_pages; int capabilities; } ;
struct TYPE_3__ {int disk; int dax_dev; } ;


 int BDI_CAP_STABLE_WRITES ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_DAX ;
 int QUEUE_FLAG_DISCARD ;
 unsigned long QUEUE_FLAG_FUA ;
 int QUEUE_FLAG_NONROT ;
 int QUEUE_FLAG_SECERASE ;
 unsigned long QUEUE_FLAG_WC ;
 scalar_t__ blk_queue_add_random (struct request_queue*) ;
 int blk_queue_flag_clear (int ,struct request_queue*) ;
 int blk_queue_flag_set (int ,struct request_queue*) ;
 scalar_t__ blk_queue_is_zoned (struct request_queue*) ;
 int blk_queue_write_cache (struct request_queue*,int,int) ;
 int blk_revalidate_disk_zones (int ) ;
 int dax_write_cache (int ,int) ;
 int device_dax_synchronous ;
 int device_is_nonrot ;
 int device_is_not_random ;
 int device_supports_dax ;
 scalar_t__ dm_table_all_devices_attribute (struct dm_table*,int ) ;
 scalar_t__ dm_table_requires_stable_pages (struct dm_table*) ;
 scalar_t__ dm_table_supports_dax (struct dm_table*,int ,int*) ;
 scalar_t__ dm_table_supports_dax_write_cache (struct dm_table*) ;
 int dm_table_supports_discards (struct dm_table*) ;
 scalar_t__ dm_table_supports_flush (struct dm_table*,unsigned long) ;
 scalar_t__ dm_table_supports_secure_erase (struct dm_table*) ;
 int dm_table_supports_write_same (struct dm_table*) ;
 int dm_table_supports_write_zeroes (struct dm_table*) ;
 int dm_table_verify_integrity (struct dm_table*) ;
 int set_dax_synchronous (int ) ;

void dm_table_set_restrictions(struct dm_table *t, struct request_queue *q,
          struct queue_limits *limits)
{
 bool wc = 0, fua = 0;
 int page_size = PAGE_SIZE;




 q->limits = *limits;

 if (!dm_table_supports_discards(t)) {
  blk_queue_flag_clear(QUEUE_FLAG_DISCARD, q);

  q->limits.max_discard_sectors = 0;
  q->limits.max_hw_discard_sectors = 0;
  q->limits.discard_granularity = 0;
  q->limits.discard_alignment = 0;
  q->limits.discard_misaligned = 0;
 } else
  blk_queue_flag_set(QUEUE_FLAG_DISCARD, q);

 if (dm_table_supports_secure_erase(t))
  blk_queue_flag_set(QUEUE_FLAG_SECERASE, q);

 if (dm_table_supports_flush(t, (1UL << QUEUE_FLAG_WC))) {
  wc = 1;
  if (dm_table_supports_flush(t, (1UL << QUEUE_FLAG_FUA)))
   fua = 1;
 }
 blk_queue_write_cache(q, wc, fua);

 if (dm_table_supports_dax(t, device_supports_dax, &page_size)) {
  blk_queue_flag_set(QUEUE_FLAG_DAX, q);
  if (dm_table_supports_dax(t, device_dax_synchronous, ((void*)0)))
   set_dax_synchronous(t->md->dax_dev);
 }
 else
  blk_queue_flag_clear(QUEUE_FLAG_DAX, q);

 if (dm_table_supports_dax_write_cache(t))
  dax_write_cache(t->md->dax_dev, 1);


 if (dm_table_all_devices_attribute(t, device_is_nonrot))
  blk_queue_flag_set(QUEUE_FLAG_NONROT, q);
 else
  blk_queue_flag_clear(QUEUE_FLAG_NONROT, q);

 if (!dm_table_supports_write_same(t))
  q->limits.max_write_same_sectors = 0;
 if (!dm_table_supports_write_zeroes(t))
  q->limits.max_write_zeroes_sectors = 0;

 dm_table_verify_integrity(t);





 if (dm_table_requires_stable_pages(t))
  q->backing_dev_info->capabilities |= BDI_CAP_STABLE_WRITES;
 else
  q->backing_dev_info->capabilities &= ~BDI_CAP_STABLE_WRITES;







 if (blk_queue_add_random(q) && dm_table_all_devices_attribute(t, device_is_not_random))
  blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, q);
 if (blk_queue_is_zoned(q))
  blk_revalidate_disk_zones(t->md->disk);


 q->backing_dev_info->io_pages = limits->max_sectors >> (PAGE_SHIFT - 9);
}
