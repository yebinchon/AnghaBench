
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transient_c {scalar_t__ next_free; } ;
struct dm_exception_store {scalar_t__ chunk_size; int snap; struct transient_c* context; } ;
struct dm_exception {int new_chunk; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int bdev; } ;


 TYPE_1__* dm_snap_cow (int ) ;
 scalar_t__ get_dev_size (int ) ;
 int sector_to_chunk (struct dm_exception_store*,scalar_t__) ;

__attribute__((used)) static int transient_prepare_exception(struct dm_exception_store *store,
           struct dm_exception *e)
{
 struct transient_c *tc = store->context;
 sector_t size = get_dev_size(dm_snap_cow(store->snap)->bdev);

 if (size < (tc->next_free + store->chunk_size))
  return -1;

 e->new_chunk = sector_to_chunk(store, tc->next_free);
 tc->next_free += store->chunk_size;

 return 0;
}
