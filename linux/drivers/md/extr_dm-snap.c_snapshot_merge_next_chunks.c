
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct dm_snapshot {int merge_failed; int num_merging_chunks; int kcopyd_client; int lock; scalar_t__ first_merging_chunk; TYPE_4__* store; TYPE_3__* cow; TYPE_2__* origin; int valid; int state_bits; } ;
struct dm_io_region {void* sector; int count; int bdev; } ;
typedef int sector_t ;
typedef scalar_t__ chunk_t ;
struct TYPE_9__ {int chunk_size; TYPE_1__* type; } ;
struct TYPE_8__ {int bdev; } ;
struct TYPE_7__ {int bdev; } ;
struct TYPE_6__ {int (* prepare_merge ) (TYPE_4__*,scalar_t__*,scalar_t__*) ;} ;


 int BUG_ON (int) ;
 int DMERR (char*) ;
 int RUNNING_MERGE ;
 int SHUTDOWN_MERGE ;
 int __check_for_conflicting_io (struct dm_snapshot*,scalar_t__) ;
 int _pending_exceptions_done ;
 void* chunk_to_sector (TYPE_4__*,scalar_t__) ;
 int dm_kcopyd_copy (int ,struct dm_io_region*,int,struct dm_io_region*,int ,int ,struct dm_snapshot*) ;
 int down_write (int *) ;
 void* get_dev_size (int ) ;
 int merge_callback ;
 int merge_shutdown (struct dm_snapshot*) ;
 int min (int,void*) ;
 scalar_t__ origin_write_extent (struct dm_snapshot*,void*,int) ;
 scalar_t__ read_pending_exceptions_done_count () ;
 int stub1 (TYPE_4__*,scalar_t__*,scalar_t__*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int up_write (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void snapshot_merge_next_chunks(struct dm_snapshot *s)
{
 int i, linear_chunks;
 chunk_t old_chunk, new_chunk;
 struct dm_io_region src, dest;
 sector_t io_size;
 uint64_t previous_count;

 BUG_ON(!test_bit(RUNNING_MERGE, &s->state_bits));
 if (unlikely(test_bit(SHUTDOWN_MERGE, &s->state_bits)))
  goto shut;




 if (!s->valid) {
  DMERR("Snapshot is invalid: can't merge");
  goto shut;
 }

 linear_chunks = s->store->type->prepare_merge(s->store, &old_chunk,
            &new_chunk);
 if (linear_chunks <= 0) {
  if (linear_chunks < 0) {
   DMERR("Read error in exception store: "
         "shutting down merge");
   down_write(&s->lock);
   s->merge_failed = 1;
   up_write(&s->lock);
  }
  goto shut;
 }


 old_chunk = old_chunk + 1 - linear_chunks;
 new_chunk = new_chunk + 1 - linear_chunks;





 io_size = linear_chunks * s->store->chunk_size;

 dest.bdev = s->origin->bdev;
 dest.sector = chunk_to_sector(s->store, old_chunk);
 dest.count = min(io_size, get_dev_size(dest.bdev) - dest.sector);

 src.bdev = s->cow->bdev;
 src.sector = chunk_to_sector(s->store, new_chunk);
 src.count = dest.count;
 previous_count = read_pending_exceptions_done_count();
 while (origin_write_extent(s, dest.sector, io_size)) {
  wait_event(_pending_exceptions_done,
      (read_pending_exceptions_done_count() !=
       previous_count));

  previous_count = read_pending_exceptions_done_count();
 }

 down_write(&s->lock);
 s->first_merging_chunk = old_chunk;
 s->num_merging_chunks = linear_chunks;
 up_write(&s->lock);


 for (i = 0; i < linear_chunks; i++)
  __check_for_conflicting_io(s, old_chunk + i);

 dm_kcopyd_copy(s->kcopyd_client, &src, 1, &dest, 0, merge_callback, s);
 return;

shut:
 merge_shutdown(s);
}
