
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int dummy; } ;
struct bio {struct cached_dev* bi_private; int bi_end_io; } ;
struct cached_dev {int sb; int bdev; int sb_write_mutex; struct bio sb_bio; struct closure sb_write; } ;


 int __write_super (int *,struct bio*) ;
 int bch_write_bdev_super_unlock ;
 int bio_reset (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int closure_get (struct closure*) ;
 int closure_init (struct closure*,struct closure*) ;
 int closure_return_with_destructor (struct closure*,int ) ;
 int down (int *) ;
 int write_bdev_super_endio ;

void bch_write_bdev_super(struct cached_dev *dc, struct closure *parent)
{
 struct closure *cl = &dc->sb_write;
 struct bio *bio = &dc->sb_bio;

 down(&dc->sb_write_mutex);
 closure_init(cl, parent);

 bio_reset(bio);
 bio_set_dev(bio, dc->bdev);
 bio->bi_end_io = write_bdev_super_endio;
 bio->bi_private = dc;

 closure_get(cl);

 __write_super(&dc->sb, bio);

 closure_return_with_destructor(cl, bch_write_bdev_super_unlock);
}
