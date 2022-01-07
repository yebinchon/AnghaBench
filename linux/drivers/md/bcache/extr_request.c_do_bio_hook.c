
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {int * bi_private; int * bi_end_io; } ;
struct TYPE_2__ {struct bio bio; } ;
struct search {int cl; TYPE_1__ bio; } ;
typedef int bio_end_io_t ;


 int __bio_clone_fast (struct bio*,struct bio*) ;
 int bio_cnt_set (struct bio*,int) ;
 int bio_init (struct bio*,int *,int ) ;

__attribute__((used)) static void do_bio_hook(struct search *s,
   struct bio *orig_bio,
   bio_end_io_t *end_io_fn)
{
 struct bio *bio = &s->bio.bio;

 bio_init(bio, ((void*)0), 0);
 __bio_clone_fast(bio, orig_bio);






 bio->bi_end_io = end_io_fn;
 bio->bi_private = &s->cl;

 bio_cnt_set(bio, 3);
}
