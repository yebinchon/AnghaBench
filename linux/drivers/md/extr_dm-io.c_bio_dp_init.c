
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpages {int context_bi; int context_ptr; int next_page; int get_page; } ;
struct bio {int bi_iter; int bi_io_vec; } ;


 int bio_get_page ;
 int bio_next_page ;

__attribute__((used)) static void bio_dp_init(struct dpages *dp, struct bio *bio)
{
 dp->get_page = bio_get_page;
 dp->next_page = bio_next_page;





 dp->context_ptr = bio->bi_io_vec;
 dp->context_bi = bio->bi_iter;
}
