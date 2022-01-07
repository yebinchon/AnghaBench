
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror {int dummy; } ;
struct bio {struct bio* bi_next; } ;



__attribute__((used)) static void bio_set_m(struct bio *bio, struct mirror *m)
{
 bio->bi_next = (struct bio *) m;
}
