
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thin_c {int dummy; } ;
struct dm_thin_endio_hook {struct dm_bio_prison_cell* cell; } ;
struct TYPE_2__ {int block_end; int block_begin; } ;
struct dm_bio_prison_cell {TYPE_1__ key; struct bio* holder; } ;
struct bio {int dummy; } ;


 int bio_endio (struct bio*) ;
 int break_up_discard_bio (struct thin_c*,int ,int ,struct bio*) ;
 struct dm_thin_endio_hook* dm_per_bio_data (struct bio*,int) ;

__attribute__((used)) static void process_discard_cell_passdown(struct thin_c *tc, struct dm_bio_prison_cell *virt_cell)
{
 struct bio *bio = virt_cell->holder;
 struct dm_thin_endio_hook *h = dm_per_bio_data(bio, sizeof(struct dm_thin_endio_hook));






 h->cell = virt_cell;
 break_up_discard_bio(tc, virt_cell->key.block_begin, virt_cell->key.block_end, bio);






 bio_endio(bio);
}
