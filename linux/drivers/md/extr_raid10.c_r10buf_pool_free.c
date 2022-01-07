
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resync_pages {int dummy; } ;
struct r10conf {int copies; } ;
struct r10bio {TYPE_1__* devs; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct bio* repl_bio; struct bio* bio; } ;


 int bio_put (struct bio*) ;
 struct resync_pages* get_resync_pages (struct bio*) ;
 int kfree (struct resync_pages*) ;
 int rbio_pool_free (struct r10bio*,struct r10conf*) ;
 int resync_free_pages (struct resync_pages*) ;

__attribute__((used)) static void r10buf_pool_free(void *__r10_bio, void *data)
{
 struct r10conf *conf = data;
 struct r10bio *r10bio = __r10_bio;
 int j;
 struct resync_pages *rp = ((void*)0);

 for (j = conf->copies; j--; ) {
  struct bio *bio = r10bio->devs[j].bio;

  if (bio) {
   rp = get_resync_pages(bio);
   resync_free_pages(rp);
   bio_put(bio);
  }

  bio = r10bio->devs[j].repl_bio;
  if (bio)
   bio_put(bio);
 }


 kfree(rp);

 rbio_pool_free(r10bio, conf);
}
