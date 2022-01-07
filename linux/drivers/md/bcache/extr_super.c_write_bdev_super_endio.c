
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dev {int sb_write; } ;
struct bio {scalar_t__ bi_status; struct cached_dev* bi_private; } ;


 int bch_count_backing_io_errors (struct cached_dev*,struct bio*) ;
 int closure_put (int *) ;

__attribute__((used)) static void write_bdev_super_endio(struct bio *bio)
{
 struct cached_dev *dc = bio->bi_private;

 if (bio->bi_status)
  bch_count_backing_io_errors(dc, bio);

 closure_put(&dc->sb_write);
}
