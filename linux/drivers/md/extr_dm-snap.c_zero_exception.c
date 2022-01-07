
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_snapshot {int kcopyd_client; TYPE_1__* store; TYPE_2__* cow; } ;
struct dm_io_region {int count; int sector; int bdev; } ;
struct dm_exception {int dummy; } ;
struct TYPE_6__ {int bi_sector; } ;
struct bio {struct dm_snapshot* bi_private; TYPE_3__ bi_iter; } ;
typedef int chunk_t ;
struct TYPE_5__ {int bdev; } ;
struct TYPE_4__ {int chunk_size; } ;


 int WARN_ON_ONCE (struct dm_snapshot*) ;
 int account_start_copy (struct dm_snapshot*) ;
 int dm_kcopyd_zero (int ,int,struct dm_io_region*,int ,int ,struct bio*) ;
 int zero_callback ;

__attribute__((used)) static void zero_exception(struct dm_snapshot *s, struct dm_exception *e,
      struct bio *bio, chunk_t chunk)
{
 struct dm_io_region dest;

 dest.bdev = s->cow->bdev;
 dest.sector = bio->bi_iter.bi_sector;
 dest.count = s->store->chunk_size;

 account_start_copy(s);
 WARN_ON_ONCE(bio->bi_private);
 bio->bi_private = s;
 dm_kcopyd_zero(s->kcopyd_client, 1, &dest, 0, zero_callback, bio);
}
