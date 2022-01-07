
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mirror {TYPE_1__* dev; } ;
struct TYPE_4__ {int bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
struct TYPE_3__ {int bdev; } ;


 int bio_set_dev (struct bio*,int ) ;
 int map_sector (struct mirror*,struct bio*) ;

__attribute__((used)) static void map_bio(struct mirror *m, struct bio *bio)
{
 bio_set_dev(bio, m->dev->bdev);
 bio->bi_iter.bi_sector = map_sector(m, bio);
}
