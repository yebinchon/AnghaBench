
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mirror {TYPE_1__* ms; scalar_t__ offset; } ;
struct TYPE_4__ {int bi_sector; int bi_size; } ;
struct bio {TYPE_2__ bi_iter; } ;
typedef scalar_t__ sector_t ;
struct TYPE_3__ {int ti; } ;


 scalar_t__ dm_target_offset (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static sector_t map_sector(struct mirror *m, struct bio *bio)
{
 if (unlikely(!bio->bi_iter.bi_size))
  return 0;
 return m->offset + dm_target_offset(m->ms->ti, bio->bi_iter.bi_sector);
}
