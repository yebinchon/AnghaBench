
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1bio {int sector; struct mddev* mddev; scalar_t__ state; int sectors; struct bio* master_bio; } ;
struct mddev {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int bio_sectors (struct bio*) ;

__attribute__((used)) static void init_r1bio(struct r1bio *r1_bio, struct mddev *mddev, struct bio *bio)
{
 r1_bio->master_bio = bio;
 r1_bio->sectors = bio_sectors(bio);
 r1_bio->state = 0;
 r1_bio->mddev = mddev;
 r1_bio->sector = bio->bi_iter.bi_sector;
}
