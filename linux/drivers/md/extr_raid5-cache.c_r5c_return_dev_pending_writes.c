
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5dev {scalar_t__ sector; struct bio* written; } ;
struct r5conf {int mddev; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;


 scalar_t__ STRIPE_SECTORS ;
 int bio_endio (struct bio*) ;
 int md_write_end (int ) ;
 struct bio* r5_next_bio (struct bio*,scalar_t__) ;

__attribute__((used)) static void
r5c_return_dev_pending_writes(struct r5conf *conf, struct r5dev *dev)
{
 struct bio *wbi, *wbi2;

 wbi = dev->written;
 dev->written = ((void*)0);
 while (wbi && wbi->bi_iter.bi_sector <
        dev->sector + STRIPE_SECTORS) {
  wbi2 = r5_next_bio(wbi, dev->sector);
  md_write_end(conf->mddev);
  bio_endio(wbi);
  wbi = wbi2;
 }
}
