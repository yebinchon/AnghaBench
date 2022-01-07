
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5l_log {scalar_t__ log_start; TYPE_2__* rdev; int bs; } ;
struct TYPE_3__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {scalar_t__ data_offset; int bdev; } ;


 int BIO_MAX_PAGES ;
 int GFP_NOIO ;
 int REQ_OP_WRITE ;
 struct bio* bio_alloc_bioset (int ,int ,int *) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;

__attribute__((used)) static struct bio *r5l_bio_alloc(struct r5l_log *log)
{
 struct bio *bio = bio_alloc_bioset(GFP_NOIO, BIO_MAX_PAGES, &log->bs);

 bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 bio_set_dev(bio, log->rdev->bdev);
 bio->bi_iter.bi_sector = log->rdev->data_offset + log->log_start;

 return bio;
}
