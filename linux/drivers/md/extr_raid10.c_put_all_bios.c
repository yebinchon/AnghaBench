
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {int copies; } ;
struct r10bio {scalar_t__ read_slot; TYPE_1__* devs; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct bio* repl_bio; struct bio* bio; } ;


 int BIO_SPECIAL (struct bio*) ;
 int bio_put (struct bio*) ;

__attribute__((used)) static void put_all_bios(struct r10conf *conf, struct r10bio *r10_bio)
{
 int i;

 for (i = 0; i < conf->copies; i++) {
  struct bio **bio = & r10_bio->devs[i].bio;
  if (!BIO_SPECIAL(*bio))
   bio_put(*bio);
  *bio = ((void*)0);
  bio = &r10_bio->devs[i].repl_bio;
  if (r10_bio->read_slot < 0 && !BIO_SPECIAL(*bio))
   bio_put(*bio);
  *bio = ((void*)0);
 }
}
