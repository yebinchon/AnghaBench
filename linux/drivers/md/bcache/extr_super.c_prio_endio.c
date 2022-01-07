
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int prio; int set; } ;
struct bio {int bi_status; struct cache* bi_private; } ;


 int bch_bbio_free (struct bio*,int ) ;
 int cache_set_err_on (int ,int ,char*) ;
 int closure_put (int *) ;

__attribute__((used)) static void prio_endio(struct bio *bio)
{
 struct cache *ca = bio->bi_private;

 cache_set_err_on(bio->bi_status, ca->set, "accessing priorities");
 bch_bbio_free(bio, ca->set);
 closure_put(&ca->prio);
}
