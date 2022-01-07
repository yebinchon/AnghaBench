
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int (* end_io ) (struct dm_buffer*,int ) ;} ;
struct bio {int bi_status; struct dm_buffer* bi_private; } ;
typedef int blk_status_t ;


 int bio_put (struct bio*) ;
 int stub1 (struct dm_buffer*,int ) ;

__attribute__((used)) static void bio_complete(struct bio *bio)
{
 struct dm_buffer *b = bio->bi_private;
 blk_status_t status = bio->bi_status;
 bio_put(bio);
 b->end_io(b, status);
}
