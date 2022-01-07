
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_bio_data {int tick; scalar_t__ len; int * cell; int req_nr; } ;
struct bio {int dummy; } ;


 int dm_bio_get_target_bio_nr (struct bio*) ;
 struct per_bio_data* get_per_bio_data (struct bio*) ;

__attribute__((used)) static struct per_bio_data *init_per_bio_data(struct bio *bio)
{
 struct per_bio_data *pb = get_per_bio_data(bio);

 pb->tick = 0;
 pb->req_nr = dm_bio_get_target_bio_nr(bio);
 pb->cell = ((void*)0);
 pb->len = 0;

 return pb;
}
