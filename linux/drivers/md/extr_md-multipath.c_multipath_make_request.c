
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct multipath_info {TYPE_2__* rdev; } ;
struct TYPE_9__ {int bi_sector; } ;
struct TYPE_11__ {struct multipath_bh* bi_private; int bi_end_io; int bi_opf; TYPE_1__ bi_iter; } ;
struct multipath_bh {scalar_t__ path; TYPE_3__ bio; struct mddev* mddev; struct bio* master_bio; } ;
struct mpconf {struct multipath_info* multipaths; int pool; } ;
struct mddev {struct mpconf* private; } ;
struct bio {int bi_opf; } ;
struct TYPE_10__ {int bdev; scalar_t__ data_offset; } ;


 int GFP_NOIO ;
 int REQ_FAILFAST_TRANSPORT ;
 int REQ_PREFLUSH ;
 int __bio_clone_fast (TYPE_3__*,struct bio*) ;
 int bio_init (TYPE_3__*,int *,int ) ;
 int bio_io_error (struct bio*) ;
 int bio_set_dev (TYPE_3__*,int ) ;
 int generic_make_request (TYPE_3__*) ;
 int md_flush_request (struct mddev*,struct bio*) ;
 int mddev_check_write_zeroes (struct mddev*,TYPE_3__*) ;
 int mddev_check_writesame (struct mddev*,TYPE_3__*) ;
 struct multipath_bh* mempool_alloc (int *,int ) ;
 int mempool_free (struct multipath_bh*,int *) ;
 int multipath_end_request ;
 scalar_t__ multipath_map (struct mpconf*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool multipath_make_request(struct mddev *mddev, struct bio * bio)
{
 struct mpconf *conf = mddev->private;
 struct multipath_bh * mp_bh;
 struct multipath_info *multipath;

 if (unlikely(bio->bi_opf & REQ_PREFLUSH)) {
  md_flush_request(mddev, bio);
  return 1;
 }

 mp_bh = mempool_alloc(&conf->pool, GFP_NOIO);

 mp_bh->master_bio = bio;
 mp_bh->mddev = mddev;

 mp_bh->path = multipath_map(conf);
 if (mp_bh->path < 0) {
  bio_io_error(bio);
  mempool_free(mp_bh, &conf->pool);
  return 1;
 }
 multipath = conf->multipaths + mp_bh->path;

 bio_init(&mp_bh->bio, ((void*)0), 0);
 __bio_clone_fast(&mp_bh->bio, bio);

 mp_bh->bio.bi_iter.bi_sector += multipath->rdev->data_offset;
 bio_set_dev(&mp_bh->bio, multipath->rdev->bdev);
 mp_bh->bio.bi_opf |= REQ_FAILFAST_TRANSPORT;
 mp_bh->bio.bi_end_io = multipath_end_request;
 mp_bh->bio.bi_private = mp_bh;
 mddev_check_writesame(mddev, &mp_bh->bio);
 mddev_check_write_zeroes(mddev, &mp_bh->bio);
 generic_make_request(&mp_bh->bio);
 return 1;
}
